{if $procrmOrderMessage != ""}
    <div id="pro_order_msg" style="font-size: 14px; font-weight: bold; background: #f00;"><span>{$procrmOrderMessage}</span></div>    
{/if}
{{include file='include/DetailView/header.tpl'}}
{if $isOrderStatusChangable }
    <div id="pro_order_mst_status_chng" style="display: none;" class="formHeader h3Row"> 
        <form name="frm_order_status_chng" id = "frm_order_status_chng" method="post"> 
            <div style="padding-top:20px; font-size: 12px; font-weight: bold; color: #000;">Change Order Status</div>    
            <div>
                <select id="ordernextstatus" name="ordernextstatus" onchange="pro_ordernextstatus_frm(this);" style="width:200px" >
                    {$orderNextStatus}   
                </select>
            </div>  
            <div id="procrm_ordr_ads_frm_ctn" style="display: none;">
                <div style="font-weight:bold; margin: 10px 0 ;">Address Detail:</div>
                <div style="margin: 3px 0;"><span style="width: 80px; display: inline-block;">Name:</span> <input type="text" id="ads_name" name="ads_name" size="25" /> </div>
                <div style="margin: 3px 0;"><span style="width: 80px; display: inline-block;">AddressLine1:</span> <input type="text" id="ads_ads_line1" name="ads_ads_line1" size="25" /></div>
                <div style="margin: 3px 0;"><span style="width: 80px; display: inline-block;">AddressLine2:</span> <input type="text" id="ads_ads_line2" name="ads_ads_line2" size="25" /></div>
                <div style="margin: 3px 0;"><span style="width: 80px; display: inline-block;">City:</span> <input type="text" id="ads_city" name="ads_city" size="25" /></div>
                <div style="margin: 3px 0;"><span style="width: 80px; display: inline-block;">State:</span> <input type="text" id="ads_state" name="ads_state" size="25" /></div>
                <div style="margin: 3px 0;"><span style="width: 80px; display: inline-block;">Country:</span> <input type="text" id="ads_country" name="ads_country" size="25" /></div>
                <div style="margin: 3px 0;"><span style="width: 80px; display: inline-block;">Pincode:</span> <input type="text" id="ads_pincode" name="ads_pincode" size="10" /></div>
                <div style="margin: 3px 0;"><span style="width: 80px; display: inline-block;">Phone:</span> <input type="text" id="ads_phone" name="ads_phone" size="10" /></div>
            </div>

            <div style="padding:10px 0  20px 0; " >
                <input type="button" value="Save" id="pro_order_mstr_save_btn" onClick="javascript:pro_order_chng_submit(this.form); " />
                <input type="button" value="Cancel" onClick="javascript:pro_order_chng_btn(0); " />

            </div>
                <input type="hidden" name="module" id="module" value="alan_OrderMaster" />
                <input type="hidden" name="action" id="action" value="updateorderstatus" />
                <input type="hidden" name="crm_record_id" id="crm_record_id" value="{$procrmOrderId}" />
        </form>
    </div>
{/if}