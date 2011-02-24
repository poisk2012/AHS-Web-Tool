NodeSelect
==========
This module allows editors to search for content, in a simple exposed View integrated with Embedded Edit, and results can be drag and dropped into nodereferences. This module is used by Editor Toolbox, a fixed-position tabbed toolbox containing nodeselect, bookmarks and history.

Installation
------------
In the block page, put the Nodeselect block at the right/left sidebar. Note that a much better effect is achieved with Editor Toolbox, since its block has an fixed position (does not move when you scroll the page)

Configuration page
------------------
Several options can be used at admin/settings/nodeselect.
You can enable/disable drag and drop to specified nodereference, activate embedded edit edit/view links.

Customization
-------------
Because we don't know with what you want to allow your users to filter content, we put the strict minimum of search fields. You will have to add a few more exposed filters in the edit page of the view aef_nodeselect_content.
