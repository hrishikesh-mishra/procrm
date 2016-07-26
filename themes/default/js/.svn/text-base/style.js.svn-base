/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2012 SugarCRM Inc.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/
YAHOO.util.Event.onDOMReady(function()
{if(location.href.indexOf('print=true')>-1)
setTimeout("window.print();",1000);});

function pro_ordernextstatus_frm(statusSelBox){
    if (statusSelBox.value == 'replacement' || statusSelBox.value == 'rto'){
        jQuery("#procrm_ordr_ads_frm_ctn").show(500);
    }else {
        jQuery("#procrm_ordr_ads_frm_ctn").hide(500);
    }
}

function pro_order_chng_btn(isShow){
    if(isShow) {
        jQuery("#pro_order_mst_status_chng").show(500);
    }else {
        jQuery("#pro_order_mst_status_chng").hide(500);
    }
}

function pro_order_chng_submit(proOdrMstrFrm){
    if (!validate_form()){
        return false;
    }
    ajaxStatus.showStatus('Please wait .....');
    $("#pro_order_mstr_save_btn").attr("disabled",true);
    SUGAR.ajaxUI.submitForm(proOdrMstrFrm);
    
    
}

function validate_form(){
    
    var orderStatus = jQuery.trim(jQuery("#ordernextstatus").val());
    
    if(orderStatus == ""){
        alert("Please select order status.");
        return false; 
    }else if(orderStatus == 'replacement' || orderStatus == 'rto') {

        if (jQuery.trim(jQuery("#ads_name").val()) == ""){
            alert("Address name must not be empty.");
            return false;
        }else if (jQuery.trim(jQuery("#ads_ads_line1").val())  == ""){
            alert("Address Line 1 must not be empty.");
            return false;
        }else if (jQuery.trim(jQuery("#ads_city").val())  == ""){
            alert("Address City must not be empty.");
            return false;
        }else if (jQuery.trim(jQuery("#ads_state").val())  == ""){
            alert("Address State must not be empty.");
            return false;
        }else if (jQuery.trim(jQuery("#ads_country").val()) == ""){
            alert("Address Country must not be empty.");
            return false;
        }else if (jQuery.trim(jQuery("#ads_pincode").val()) == ""){
            alert("Address Pincode must not be empty.");
            return false;
        } else if (jQuery.trim(jQuery("#ads_phone").val())  == ""){
            alert("Address Phone no must not be empty.");
            return false;
        }
    
    }
    
    return true;
    
}

