<?php
// $Id: node.inc,v 1.2.2.1.2.1 2008/04/08 14:01:57 weitzman Exp $

/**
 * Implementation of hook_diff() for node.module (body and title).
 */
function node_diff($old_node, $new_node) {
  
  $result = array();
  $type = node_get_types('type', $new_node);
  $result['title'] = array(
    '#name' => $type->title_label,
    '#old' => array($old_node->title),
    '#new' => array($new_node->title),
    '#weight' => -5,
    '#format' => array(
      'show_header' => FALSE,
    )
  );
  if ($type->has_body) {
    $result['body'] = array(
      '#name' => $type->body_label,
      '#old' => explode("\n", $old_node->body),
      '#new' => explode("\n", $new_node->body),
    );
  }
  return $result;
}
