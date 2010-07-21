AEF Embedded Edit
=================
This module allows you to create a node within a kind of lightbox. It is also used by others modules like Uberimage, Nodeselect to add view/edit buttons in the nodereference.
When creating a new node, it will populate the corresponding nodereference.

How to use it?
--------------
Go to a nodereference field configuration page, look for the "AEF embedded edit options" fieldset, and select a content type.
Now go to the node edit page, you will notice a link "Create new @content_type" below the nodereference. Click on it, a "lightbox" open with the node creation form. Fill it, save, and the nodereference will be filled.
Note: Your page.tpl.php should print $closure somewhere! (Usually by default it's here)

API - How to use it programmatically?
-------------------------------------
* Creation of a new node
  You will need to make a link with a given class name and the field name as an attribute, on the path aef_embedded_edit/node/add/%type. E.g.:
  l(t('Create new node')), 'aef_embedded_edit/node/add/story',
    array('attributes' => array('class' => 'create_new_button', 'field' => 'field_noderef')));

* Viewing of a node
  Only the modified path node/%nid/aef_embedded_edit and the class aef_embedded_edit is required
  l(t('Create new node')), 'node/12345/aef_embedded_edit', 
    array('attributes' => array('class' => 'aef_embedded_edit'))));

* Editing of a node
  Only the modified path node/%nid/edit/aef_embedded_edit and the class aef_embedded_edit is required
  l(t('Create new node')), 'node/12345/edit/aef_embedded_edit', 
    array('attributes' => array('class' => 'aef_embedded_edit'))));

