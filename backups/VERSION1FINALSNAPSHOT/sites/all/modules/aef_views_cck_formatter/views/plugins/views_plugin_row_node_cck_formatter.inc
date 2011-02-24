<?php

/**
 * @file
 * Contains the node CCK formatter view row style plugin.
 */

/**
 * Plugin which performs a CCK formatter on the resulting object.
 */
class views_plugin_row_node_cck_formatter extends views_plugin_row {
  // Basic properties that let the row style follow relationships.
  var $base_table = 'node';
  var $base_field = 'nid';

  function init(&$view, &$display, $options = NULL) {
    parent::init($view, $display, $options);
  }

  function option_definition() {
    $options = parent::option_definition();

    $options['cck_formatter'] = array('default' => 'default');

    return $options;
  }

  function options_form(&$form, &$form_state) {
    parent::options_form($form, $form_state);

    $form['cck_formatter'] = array(
      '#type' => 'select',
      '#options' => _aef_views_cck_formatter_formatter_options(),
      '#title' => t('CCK Formatter'),
      '#default_value' => $this->options['cck_formatter'],
     );
  }

  /**
   * Render a row object. This usually passes through to a theme template
   * of some form, but not always.
   */
  function render($row) {
    $formatter_name = $this->options['cck_formatter'];
    $formatter = _content_get_formatter($formatter_name, 'nodereference');
    $theme = $formatter['module'] .'_formatter_'. $formatter_name;
    $item = array(
      '#item' => array('nid' => $row->nid),
      '#theme' => $theme,
      '#formatter' => $formatter_name,
    );
    $item_output = theme($theme, $item);
    if($item_output)
    {
      $output = '<div class="views-row-formatter-' . $formatter_name . '">';
      $output .= $item_output;
      $output .= '</div>';
    }

    return $output;
  }
}
