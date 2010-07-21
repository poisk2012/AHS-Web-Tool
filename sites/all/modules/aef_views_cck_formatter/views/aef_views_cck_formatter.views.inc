<?php


function aef_views_cck_formatter_views_plugins() {
  return array(
    'module' => 'aef_views_cck_formatter', // This just tells our themes are elsewhere.
    'row' => array(
      'node_cck_formatter' => array(
        'title' => t('CCK formatter'),
        'help' => t('Display the node with a CCK formatter.'),
        'handler' => 'views_plugin_row_node_cck_formatter',
        'path' => drupal_get_path('module', 'aef_views_cck_formatter') . '/views/plugins',
        'base' => array('node'), // only works with 'node' as base.
        'uses options' => TRUE,
        'type' => 'normal',
        'help topic' => 'style-node',
      ),
    ),
  );
}

