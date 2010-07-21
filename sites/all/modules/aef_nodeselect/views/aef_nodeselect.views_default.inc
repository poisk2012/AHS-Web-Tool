<?php


/**
 * Implementation of hook_default_view_views().
 */
function aef_nodeselect_views_default_views() {
  //Start of export
  $view = new view;
  $view->name = 'aef_nodeselect_content';
  $view->description = 'A search page with exposed filters used by AEF nodeselect.';
  $view->tag = '';
  $view->view_php = '';
  $view->base_table = 'node';
  $view->is_cacheable = FALSE;
  $view->api_version = 2;
  $view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */
  $handler = $view->new_display('default', 'Defaults', 'default');
  $handler->override_option('relationships', array(
    'flag_content_rel' => array(
      'label' => 'flag',
      'required' => 0,
      'flag' => 'bookmarks',
      'user_scope' => 'current',
      'id' => 'flag_content_rel',
      'table' => 'node',
      'field' => 'flag_content_rel',
      'override' => array(
        'button' => 'Supplanter',
      ),
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('fields', array(
    'nid' => array(
      'label' => 'Nid',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'strip_tags' => 0,
        'html' => 0,
      ),
      'link_to_node' => 0,
      'exclude' => 1,
      'id' => 'nid',
      'table' => 'node',
      'field' => 'nid',
      'relationship' => 'none',
      'override' => array(
        'button' => 'Override',
      ),
    ),
    'view_node' => array(
      'label' => 'Link',
      'alter' => array(
        'alter_text' => 0,
        'text' => '[title]',
        'make_link' => 0,
        'path' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'strip_tags' => 0,
        'html' => 0,
      ),
      'text' => '',
      'exclude' => 1,
      'id' => 'view_node',
      'table' => 'node',
      'field' => 'view_node',
      'relationship' => 'none',
    ),
    'title' => array(
      'label' => 'Title',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'strip_tags' => 0,
        'html' => 0,
      ),
      'link_to_node' => 1,
      'exclude' => 0,
      'id' => 'title',
      'table' => 'node',
      'field' => 'title',
      'relationship' => 'none',
      'override' => array(
        'button' => 'Override',
      ),
    ),
    'type' => array(
      'label' => 'Type',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'strip_tags' => 0,
        'html' => 0,
      ),
      'link_to_node' => 0,
      'exclude' => 0,
      'id' => 'type',
      'table' => 'node',
      'field' => 'type',
      'relationship' => 'none',
    ),
    'created' => array(
      'label' => 'Post date',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'strip_tags' => 0,
        'html' => 0,
      ),
      'date_format' => 'small',
      'custom_date_format' => '',
      'exclude' => 0,
      'id' => 'created',
      'table' => 'node',
      'field' => 'created',
      'relationship' => 'none',
    ),
    'name' => array(
      'label' => 'Author name',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'strip_tags' => 0,
        'html' => 0,
      ),
      'link_to_user' => 1,
      'overwrite_anonymous' => 0,
      'anonymous_text' => '',
      'exclude' => 0,
      'id' => 'name',
      'table' => 'users',
      'field' => 'name',
      'relationship' => 'none',
    ),
    'status' => array(
      'label' => 'Published',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'strip_tags' => 0,
        'html' => 0,
      ),
      'type' => 'yes-no',
      'not' => 0,
      'exclude' => 0,
      'id' => 'status',
      'table' => 'node',
      'field' => 'status',
      'relationship' => 'none',
    ),
    'edit_node' => array(
      'label' => 'Edit link',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'strip_tags' => 0,
        'html' => 0,
      ),
      'text' => '',
      'exclude' => 0,
      'id' => 'edit_node',
      'table' => 'node',
      'field' => 'edit_node',
      'relationship' => 'none',
    ),
    'nothing' => array(
      'label' => '',
      'alter' => array(
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'strip_tags' => 0,
        'html' => 0,
      ),
      'exclude' => 1,
      'id' => 'nothing',
      'table' => 'views',
      'field' => 'nothing',
      'relationship' => 'none',
    ),
    'ops' => array(
      'label' => 'M-P',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'strip_tags' => 0,
        'html' => 0,
      ),
      'link_type' => '',
      'exclude' => 0,
      'id' => 'ops',
      'table' => 'flag_content',
      'field' => 'ops',
      'relationship' => 'flag_content_rel',
      'override' => array(
        'button' => 'Supplanter',
      ),
    ),
  ));
  $handler->override_option('sorts', array(
    'created' => array(
      'order' => 'DESC',
      'granularity' => 'second',
      'id' => 'created',
      'table' => 'node',
      'field' => 'created',
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('arguments', array(
    'null' => array(
      'default_action' => 'default',
      'style_plugin' => 'default_summary',
      'style_options' => array(),
      'wildcard' => 'all',
      'wildcard_substitution' => 'Tous / Toutes',
      'title' => '',
      'breadcrumb' => '',
      'default_argument_type' => 'fixed',
      'default_argument' => '',
      'validate_type' => 'php',
      'validate_fail' => 'empty',
      'must_not_be' => 0,
      'id' => 'null',
      'table' => 'views',
      'field' => 'null',
      'validate_user_argument_type' => 'uid',
      'validate_user_roles' => array(
        '2' => 0,
        '11' => 0,
        '21' => 0,
        '3' => 0,
      ),
      'relationship' => 'none',
      'default_options_div_prefix' => '',
      'default_argument_user' => 0,
      'default_argument_fixed' => 'boo',
      'default_argument_php' => '',
      'validate_argument_node_type' => array(
        'aef_ct_external_link' => 0,
        'aef_ct_rss_feed' => 0,
        'aef_ct_rss_story' => 0,
        'article' => 0,
        'article_bienvenue_en_france' => 0,
        'article_externe' => 0,
        'audio' => 0,
        'bblog' => 0,
        'bloc_vignette' => 0,
        'blog' => 0,
        'breakingnews' => 0,
        'categorie_debat' => 0,
        'category_frontpage' => 0,
        'debat' => 0,
        'diaporama' => 0,
        'dossier' => 0,
        'edition' => 0,
        'element_multimedia' => 0,
        'emission' => 0,
        'feed' => 0,
        'finance' => 0,
        'formatimageafp' => 0,
        'home_bienvenue_en_france' => 0,
        'home_personnalite' => 0,
        'home_reportage' => 0,
        'home_rubrique' => 0,
        'home_section_debat' => 0,
        'home_section_dossier' => 0,
        'html_page' => 0,
        'imageafp' => 0,
        'liste_section' => 0,
        'meta' => 0,
        'mobile' => 0,
        'multimedia' => 0,
        'page' => 0,
        'page_pied_site' => 0,
        'personnalite' => 0,
        'photo' => 0,
        'podcast' => 0,
        'prnewswire' => 0,
        'reportage' => 0,
        'revuedepresse' => 0,
        'special_report' => 0,
        'special_report_frontpage' => 0,
        'story' => 0,
        'storyafp' => 0,
        'surcouf' => 0,
        'surfrance24' => 0,
        'tag_metadata' => 0,
        'video' => 0,
        'video_jt_eco_meteo' => 0,
        'wire' => 0,
      ),
      'validate_argument_node_access' => 0,
      'validate_argument_nid_type' => 'nid',
      'validate_argument_vocabulary' => array(
        '44' => 0,
        '47' => 0,
        '7' => 0,
        '45' => 0,
        '38' => 0,
        '27' => 0,
        '37' => 0,
        '17' => 0,
        '42' => 0,
      ),
      'validate_argument_type' => 'tid',
      'validate_argument_transform' => 0,
      'validate_user_restrict_roles' => 0,
      'validate_argument_node_flag_name' => '*relationship*',
      'validate_argument_node_flag_test' => 'flaggable',
      'validate_argument_node_flag_id_type' => 'id',
      'validate_argument_user_flag_name' => '*relationship*',
      'validate_argument_user_flag_test' => 'flaggable',
      'validate_argument_user_flag_id_type' => 'id',
      'validate_argument_php' => '    //If we are submitting values && it is our view
        if (count($view->exposed_input) && isset($_GET[\'view_name\'])) {
          return TRUE;
        }
       else
       {
         $view->set_use_pager(false);
         return false;
       }',
    ),
  ));
  $handler->override_option('filters', array(
    'title' => array(
      'operator' => 'contains',
      'value' => '',
      'group' => '0',
      'exposed' => TRUE,
      'expose' => array(
        'use_operator' => 0,
        'operator' => 'title_op',
        'identifier' => 'title',
        'label' => 'Title',
        'optional' => 1,
        'remember' => 1,
      ),
      'case' => 0,
      'id' => 'title',
      'table' => 'node',
      'field' => 'title',
      'relationship' => 'none',
    ),
    'type' => array(
      'operator' => 'in',
      'value' => array(
        'aef_ct_external_link' => 'aef_ct_external_link',
        'article' => 'article',
        'edition' => 'edition',
        'country_profile' => 'country_profile',
        'element_multimedia' => 'element_multimedia',
        'emission' => 'emission',
        'special_report' => 'special_report',
        'sound' => 'sound',
      ),
      'group' => '0',
      'exposed' => TRUE,
      'expose' => array(
        'use_operator' => 0,
        'operator' => 'type_op',
        'identifier' => 'type',
        'label' => 'Type of content',
        'optional' => 1,
        'single' => 1,
        'remember' => 1,
        'reduce' => 1,
      ),
      'id' => 'type',
      'table' => 'node',
      'field' => 'type',
      'relationship' => 'none',
    ),
    'nid' => array(
      'operator' => '=',
      'value' => array(
        'value' => '',
        'min' => '',
        'max' => '',
      ),
      'group' => '0',
      'exposed' => TRUE,
      'expose' => array(
        'use_operator' => 0,
        'operator' => 'nid_op',
        'identifier' => 'nid',
        'label' => 'Node number (nid)',
        'optional' => 1,
        'remember' => 1,
      ),
      'id' => 'nid',
      'table' => 'node',
      'field' => 'nid',
      'relationship' => 'none',
    ),
    'tid' => array(
      'operator' => 'or',
      'value' => '',
      'group' => '0',
      'exposed' => TRUE,
      'expose' => array(
        'use_operator' => 0,
        'operator' => 'tid_op',
        'identifier' => 'tid',
        'label' => 'Theme tags',
        'optional' => 1,
        'single' => 0,
        'remember' => 1,
      ),
      'type' => 'textfield',
      'limit' => TRUE,
      'vid' => '1',
      'id' => 'tid',
      'table' => 'term_node',
      'field' => 'tid',
      'hierarchy' => 0,
      'relationship' => 'none',
      'reduce_duplicates' => 0,
    ),
    'tid_1' => array(
      'operator' => 'or',
      'value' => '',
      'group' => '0',
      'exposed' => TRUE,
      'expose' => array(
        'use_operator' => 0,
        'operator' => 'tid_1_op',
        'identifier' => 'tid_1',
        'label' => 'Emission',
        'optional' => 1,
        'single' => 0,
        'remember' => 1,
      ),
      'type' => 'textfield',
      'limit' => TRUE,
      'vid' => '9',
      'id' => 'tid_1',
      'table' => 'term_node',
      'field' => 'tid',
      'hierarchy' => 0,
      'relationship' => 'none',
      'reduce_duplicates' => 0,
    ),
    'type_1' => array(
      'operator' => 'in',
      'value' => array(
        'aef_ct_external_link' => 'aef_ct_external_link',
        'aef_ct_rss_story' => 'aef_ct_rss_story',
        'article' => 'article',
        'article_bienvenue_en_france' => 'article_bienvenue_en_france',
        'country_profile' => 'country_profile',
        'debat' => 'debat',
        'dossier' => 'dossier',
        'edition' => 'edition',
        'element_multimedia' => 'element_multimedia',
        'emission' => 'emission',
        'reportage' => 'reportage',
        'revuedepresse' => 'revuedepresse',
        'special_report' => 'special_report',
        'urgent' => 'urgent',
        'sound' => 'sound',
        'story' => 'story',
        'video' => 'video',
        'wire' => 'wire',
      ),
      'group' => '0',
      'exposed' => FALSE,
      'expose' => array(
        'operator' => FALSE,
        'label' => '',
      ),
      'id' => 'type_1',
      'table' => 'node',
      'field' => 'type',
      'relationship' => 'none',
    ),
    'status' => array(
      'operator' => '=',
      'value' => '1',
      'group' => '0',
      'exposed' => TRUE,
      'expose' => array(
        'operator' => '',
        'identifier' => 'status',
        'label' => 'Published',
        'optional' => 1,
        'remember' => 0,
      ),
      'id' => 'status',
      'table' => 'node',
      'field' => 'status',
      'relationship' => 'none',
    ),
    'date_filter' => array(
      'operator' => 'between',
      'value' => array(
        'value' => NULL,
        'min' => NULL,
        'max' => NULL,
        'default_date' => '-2 days',
        'default_to_date' => 'now',
      ),
      'group' => '0',
      'exposed' => TRUE,
      'expose' => array(
        'use_operator' => 0,
        'operator' => 'date_filter_op',
        'identifier' => 'date_filter',
        'label' => 'Created between two dates:',
        'optional' => 1,
        'remember' => 1,
      ),
      'date_fields' => array(
        'node.created' => 'node.created',
      ),
      'date_method' => 'OR',
      'granularity' => 'day',
      'form_type' => 'date_popup',
      'default_date' => '-2 days',
      'default_to_date' => 'now',
      'year_range' => '-3:+3',
      'id' => 'date_filter',
      'table' => 'node',
      'field' => 'date_filter',
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('access', array(
    'type' => 'perm',
    'perm' => 'use aef_nodeselect',
  ));
  $handler->override_option('cache', array(
    'type' => 'none',
  ));
  $handler->override_option('title', 'Search content');
  $handler->override_option('empty', '<?php 
    if(is_array($_GET) && isset($_GET[\'title\']))
      echo t(\'No results.\');
    else
      echo t(\'Press "apply" to make a search.\');
    ?>');
  $handler->override_option('empty_format', '2');
  $handler->override_option('use_ajax', TRUE);
  $handler->override_option('use_pager', 'mini');
  $handler->override_option('style_options', array(
    'grouping' => '',
  ));
  $handler->override_option('row_plugin', 'node_cck_formatter');
  $handler->override_option('row_options', array(
    'relationship' => 'none',
    'cck_formatter' => 'aef_nodeselect_preview',
  ));
  $handler = $view->new_display('page', 'Page', 'page_1');
  $handler->override_option('style_plugin', 'table');
  $handler->override_option('style_options', array(
    'grouping' => '',
    'override' => 1,
    'sticky' => 0,
    'order' => 'desc',
    'columns' => array(
      'view_node' => 'view_node',
      'title' => 'title',
      'type' => 'type',
      'created' => 'created',
      'name' => 'name',
      'edit_node' => 'edit_node',
    ),
    'info' => array(
      'view_node' => array(
        'separator' => '',
      ),
      'title' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'type' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'created' => array(
        'sortable' => 1,
        'separator' => '',
      ),
      'name' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'edit_node' => array(
        'separator' => '',
      ),
    ),
    'default' => 'created',
  ));
  $handler->override_option('path', 'nodeselect_search');
  $handler->override_option('menu', array(
    'type' => 'normal',
    'title' => 'Search content',
    'description' => 'Browse and search content.',
    'weight' => '0',
    'name' => 'navigation',
  ));
  $handler->override_option('tab_options', array(
    'type' => 'none',
    'title' => '',
    'description' => '',
    'weight' => 0,
  ));
  $handler = $view->new_display('block', 'Block', 'block_1');
  $handler->override_option('block_description', 'AEF Nodeselect content search');
  $handler->override_option('block_caching', -1);
  //End of export

  //Make some modifications to the view
  $view->init_display();

  // Set the correct filter format id
  $filter_format_id = db_result(db_query_range("SELECT format FROM {filters} WHERE module = 'php' AND delta  = 0 ORDER BY format ASC", 0, 1));
  if ($filter_format_id) {
    $view->display_handler->override_option('empty_format', $filter_format_id);
  }
  
  //Set the correct taxonomy ids
  $option = 'filters';
  $handler = $view->display_handler;
  $value = $handler->get_option($option);
  //TODO: Make this configurable
  $vid = variable_get('aef_ct_theme_tags_vid', 0);
  if($vid > 0)
    $value['tid']['vid'] = $vid;
  else
    unset($value['tid']);
  $vid = variable_get('aef_emission_edition_emission_tags_vid', 0);
  if($vid > 0)
    $value['tid_1']['vid'] = $vid;
  else
    unset($value['tid_1']);
  $handler->set_option($option, $value);

  $views[$view->name] = $view;

  return $views;
}
