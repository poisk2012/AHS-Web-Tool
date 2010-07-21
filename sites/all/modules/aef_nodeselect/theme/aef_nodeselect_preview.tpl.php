<div class="nodeselect-draggable" id="li-nodeselect-draggable-[nid]">
                
  <?php print $title; ?>
  <small>(<?php print $node_type; ?>)</small><br/>
  <small><?php print $date; ?>, par <?php print $name; ?></small><br/>
      <?php if($edit_link) : ?>
        <?php print $edit_link; ?> |
      <?php endif; ?>
      <?php if($bookmark_link) : ?>
        <?php print $bookmark_link; ?> |
      <?php endif; ?>
      <?php print $edit_new_window_link; ?>

</div>
