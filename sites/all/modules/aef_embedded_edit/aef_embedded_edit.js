/**
 * Ajax Forms plugin for embedded_edit
 *
 * @param {String} hook
 * @param {Object} args
 * @return {Bool}
 */
Drupal.Ajax.plugins.embedded_edit = function(hook, args) {
  var tb_init_original;

  //If a node just got saved, load its infos saved on a cookie, and put it on a noderef
  if (hook === 'complete') {
	  parent.document.getElementById('aef-embedded-edit-area').style.display = 'none';
	  parent.document.getElementById('aef-embedded-edit-overlay').style.display = 'none';

    iframe = parent.document.getElementById('aef-embedded-edit-area-iframe');
	  var field = iframe.getAttribute('field');
	  var multigroup = iframe.getAttribute('multigroup');
    if(multigroup != "" && multigroup != undefined)
    {
      //We are in a multigroup. Finding the inputs is a little harder
      fields = parent.$('#' + multigroup + '_values > tbody > tr #' + field + '_values').find('input');
    }
    else
    {
      //Otherwise it's a simple field: easy.
      fields = parent.$('#' + field + '_values').find('input');
    }

  
	  fields.each(function () {
	    if (this.value == '') {
		    var nid = aef_embedded_edit_get_cookie_value('EENid');
		    var title = aef_embedded_edit_get_cookie_value('EETitle');
	      this.value = unescape(decodeURI(title)) + ' [nid:' + nid + ']';
        parent.$(this).trigger('change');
        return false;
	    }
    });
  }
  return true;
}



/**
 * Show an URL in the embedded edit box.
 * If field_name (field name of a noderef) is set, it will add the name of the edited
 * node into this field.
 */
function aef_embedded_edit_show(url, field_name, multigroup_name)
{
  $('#aef-embedded-edit-area').show();
  $('#aef-embedded-edit-overlay').show();

  $('#aef-embedded-edit-loading').show();
  $('#aef-embedded-edit-area-iframe:not(.load-event-processed)').addClass('load-event-processed').load(function(){ 
    //Not necessary: Hide and show the iframe here, to show the effect.
    //But DO NOT HIDE the iframe before onLoad: some plugins such as JCarousel want the height/width!
    $('#aef-embedded-edit-area-iframe').hide();
    $('#aef-embedded-edit-loading').hide();
    $(this).fadeIn('fast'); 
  });

  $('#aef-embedded-edit-area-iframe').attr('src', url);
  $('#aef-embedded-edit-area-iframe').attr('field', field_name);
  $('#aef-embedded-edit-area-iframe').attr('multigroup', multigroup_name);

  $('#aef-embedded-edit-area-preview-close').click(function() {
    $('#aef-embedded-edit-area').hide();
    $('#aef-embedded-edit-overlay').hide();
    return false;
  });
}

Drupal.behaviors.aef_embedded_edit_behavior = function() {
  //"Create new button" specific handler
  $('.create_new_button').click(function() {
    var url = $(this).attr('href');
    aef_embedded_edit_show(url, $(this).attr('field'), $(this).attr('multigroup'));
    return false;
  });

  //Generic link handler
  $('.aef_embedded_edit').click(function() {
    var url = $(this).attr('href');
    aef_embedded_edit_show(url, null);
    return false;
  });
}


/**
* Parse the cookies to find a value.
*
* @param name of cookie value.
*/
function aef_embedded_edit_get_cookie_value(name) {
 name += '=';
 var cookies = document.cookie.split(';');
 for (var i=0; i < cookies.length; i++) {
   var cookie = jQuery.trim(cookies[i]);
   if (cookie.indexOf(name) === 0) {
     return cookie.substring(name.length, cookie.length);
   }
 }
}
