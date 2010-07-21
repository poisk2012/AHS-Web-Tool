<?php

function theme_aef_nodeselect_formatter_aef_nodeselect_preview($element) {

  /**
   * Open sourced code, AEF CT is not, so put the code of aef_ct_load_and_call_theme here

	return aef_ct_load_and_call_theme('aef_nodeselect_preview', $element);

  */

  if (empty($element['#item'])) {
    return '';
  }

  $html = "";

  if ($node = node_load($element['#item']['nid'])) {
    $node->build_mode = 'teaser';
    //Not a good idea at all!!! Perf decrease of 3000%
    //node_view($node);
    $html = theme('aef_nodeselect_preview', $node);
  }

  return $html;
}

