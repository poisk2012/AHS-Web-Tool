<?php
// $Id: editview.views.inc,v 1.1.2.1 2009/05/04 13:28:02 agileware Exp $

/**
 * @file
 * Views functions.
 */

/**
 * @addtogroup editview
 * @{
 */

/**
 * New node form position: above view results.
 */
define('EDITVIEW_ABOVE', 0);

/**
 * New node form position: below view results.
 */
define('EDITVIEW_BELOW', 1);

/**
 * Implementation of hook_views_plugins().
 */
function editview_views_plugins() {
  return array(
    'style' => array(
      'editview' => array(
        'title' => t('Editview'),
        'help' => t('Displays a new node form.'),
        'handler' => 'editview_plugin_style_node_add',
        'path' => drupal_get_path('module', 'editview') .'/includes',
        'theme' => 'views_view_unformatted',
        'theme path' => drupal_get_path('module', 'views') .'/theme',
        'theme file' => 'theme.inc',
        'base' => array('node'),
        'uses options' => TRUE,
        'even empty' => TRUE,
        'type' => 'normal',
      ),
    ),
    'row' => array(
      'editview' => array(
        'title' => t('Editview'),
        'help' => t('Displays a node edit form.'),
        'handler' => 'editview_plugin_row_node_edit',
        'path' => drupal_get_path('module', 'editview') .'/includes',
        'theme' => 'editview_view_row_node_edit',
        'theme path' => drupal_get_path('module', 'editview') .'/theme',
        'theme file' => 'editview.theme.inc',
        'base' => array('node'),
        'uses fields' => TRUE,
        'type' => 'normal',
      ),
    ),
  );
}

/**
 * Menu callback; allow JavaScript to update node in view.
 */
function editview_js() {
  if (isset($_POST['form_build_id']) && isset($_POST['editview_view'])) {
    // Build the view so all necessary classes will be defined.
    $view = views_get_view($_POST['editview_view']);
    $view->build();
    // Retrive form from database.
    $form_build_id = $_POST['form_build_id'];
    $form_state = array('storage' => NULL, 'submitted' => FALSE);
    $form = form_get_cache($form_build_id, $form_state);
    // Submit node.
    module_load_include('inc', 'node', 'node.pages');
    $args = $form['#parameters'];
    $form_id = array_shift($args);
    $form_state['post'] = $form['#post'] = $_POST;
    drupal_process_form($form_id, $form, $form_state);
    // Load fresh copy of the node.
    unset($form_state['node']);
    $args[1] = node_load($form_state['values']['nid'], NULL, TRUE);
    if (!empty($args[1])) {
      // Rebuild form until element IDs match originals.
      for ($i = 0; $i < $args[3]; $i++) {
        $form = drupal_rebuild_form($form_id, $form_state, $args, $form_build_id);
      }
      $response = drupal_render($form);
    }
    // Return form to user.
    drupal_json(theme('status_messages') . (isset($response) ? $response : ''));
  }
}

/**
 * Implementation of hook_forms().
 */
function editview_forms($form_id, $args) {
  $forms = array();
  if (!strncmp($form_id, 'editview_node_form_', 19)) {
    $forms[$form_id] = array(
      'callback' => 'editview_node_form',
    );
  }
  return $forms;
}

/**
 * Prepare a node form for the view.
 *
 * @param $form_state
 *   The form state array.
 * @param $node
 *   The node object.
 * @param $view
 *   The view object.
 * @return
 *   A node form array.
 * @ingroup forms
 * @see editview_node_form_submit()
 * @see editview_node_form_delete_submit()
 */
function editview_node_form(&$form_state, $node, $view, $order, $uri) {
  $form = node_form($form_state, $node);
  // Let modules alter the node form.
  $form['#method'] = 'post';
  $type = is_array($node) ? $node['type'] : $node->type;
  $form['__drupal_alter_by_ref'] = array(&$form_state);
  drupal_alter($type .'_node_form', $form);
  $form['__drupal_alter_by_ref'] = array(&$form_state);
  drupal_alter('form', $form, $type .'_node_form');

   //   $form['title']['#required'] = FALSE;
   //   $form['#submit'][] = 'auto_nodetitle_node_form_submit';
  // Change save and delete functions.
  $form['buttons']['submit']['#submit'] = array('editview_node_form_submit');
  $form['buttons']['delete']['#submit'] = array('editview_node_form_delete_submit');
  $form['editview_view'] = array('#type' => 'hidden', '#value' => $view->name);
  $form['#id'] = form_clean_id($form['#id']);
  $form['#theme'] = 'editview_node_form';
  $form['#cache'] = TRUE;
  $form['#action'] = $uri;
  // Enable and disable ajax
  $form['#attributes'] = $view->use_ajax ? array('class' => 'editview-use-ajax') : '';
  return $form;
}

/**
 * Override the node submit redirect.
 *
 * If the form was submitted by JavaScript, do not redirect. Otherwise, redirect
 * to the requesting page.
 */
function editview_node_form_submit($form, &$form_state) {
  $uri = request_uri();
  node_form_submit($form, $form_state);
  if ($uri == $form['#parameters'][5] || !isset($form['#parameters'][2]->nid)) {
    global $base_root;
    $form_state['redirect'] = $base_root . $uri;
  }
  else {
    $form_state['redirect'] = FALSE;
  }
}

/**
 * Override the node delete redirect.
 */
function editview_node_form_delete_submit($form, &$form_state) {
  $uri = request_uri();
  if ($uri == $form['#parameters'][5]) {
    node_form_delete_submit($form, $form_state);
    $form_state['redirect'] = array('node/'. $form_state['values']['nid'] .'/delete', 'destination='. urlencode($_GET['q']));
  }
  else {
    node_delete($form_state['values']['nid']);
    $form_state['redirect'] = FALSE;
  }
}

/**
 * @} End of "addtogroup editview".
 */
