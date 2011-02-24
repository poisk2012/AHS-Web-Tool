$(document).ready(function() {
  var speed = 'slow';
  
  $('select.multi-node-edit-reorder-dropdown').change(function (){    
    var select = this;
    // parent() nightmare can be avoided with closest() in Jquery 1.3
    var this_fieldset = $(this).parent().parent().parent().parent().parent().parent();    
    var this_order = $(this_fieldset).attr('class').match(/order-\d+/g);
    this_order = this_order.toString().substring(6);

    // Move the fieldset
    $(this_fieldset).hide(speed);
    if($(this).val() < this_order) {
      $(this_fieldset).insertBefore('fieldset.multi-node-edit-order-' + $(this).val());
    } 
    else {
      $(this_fieldset).insertAfter('fieldset.multi-node-edit-order-' + $(this).val());
    }
    $.scrollTo('fieldset.multi-node-edit-order-' + this_order, speed);
    $(this_fieldset).show(speed);
    
    multi_node_edit_reorder();
    
  });
  
  $('input.multi-node-edit-remove-checkbox').change(function() {
    // parent() nightmare can be avoided with closest() in Jquery 1.3
    var this_fieldset = $(this).parent().parent().parent().parent().parent().parent().parent();

    if ($(this).is(':checked')) { 
      // Hide fieldset and also reorder dropdown
      Drupal.toggleFieldset(this_fieldset);
      this_fieldset.removeClass('reorderable');
      $(this_fieldset).find('.multi-node-edit-reorder-dropdown').parent().hide(speed);
    }
    else {
      // Enable dropdown again and fieldset for reordering
      this_fieldset.addClass('reorderable');
      $(this_fieldset).find('.multi-node-edit-reorder-dropdown').parent().show(speed);
    }
    

    multi_node_edit_reorder();
  });
});

function multi_node_edit_reorder(){
  // Rebuild the select elements
  var total = $('fieldset.reorderable').size();
  var count  =1;
  var new_options = '';
  while(count <= total) {
    new_options += "<option value='" + count  + "'>" + count + "</option>\n"; 
    count++;
  }
  $('select.multi-node-edit-reorder-dropdown').empty();
  $('select.multi-node-edit-reorder-dropdown').append(new_options);

  // Update to reflect the new order
  var count = 1;
  $('fieldset.reorderable').each(function() {
    // Update the ID
    $(this).attr('class', $(this).attr('class').replace(/order-\d+/g, 'order-' + count));
  
    // Update the select default
    $(this).find('select.multi-node-edit-reorder-dropdown option[selected]').removeAttr('selected');
    $(this).find('select.multi-node-edit-reorder-dropdown option[value=' + count + ']').attr('selected', "selected");
        
    count++;
  });
}
