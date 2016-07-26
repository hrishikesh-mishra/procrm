<?php 
if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

require_once('custom/include/procrm/OrderState.php');

class alan_OrderMasterController extends SugarController {

    public function action_detailview() {
        
        $isStatusChangable = OrderState::isStatusChangeableByCRM($this->bean->orderstatus);
        
        $orderNextStatusList ="";

        if ($isStatusChangable) {
            $orderNextStatus = OrderState::getCRMNextTargetStates($this->bean->orderstatus);
            
            if(!empty($orderNextStatus) && is_array($orderNextStatus)){
                $orderNextStatusList  =  "<option value=''>---Select Order Status---</option>\n";
                
                foreach($orderNextStatus  as $status) {
                    $orderNextStatusList  .= "<option value='".$status."'>".$status. "</option>\n";
                }
            }
        }

        $this->bean->is_status_changable_by_crm = $isStatusChangable ; 
        
        
        $viewData = array(
            'isOrderStatusChangable' => $isStatusChangable,
            'orderNextStatus' => $orderNextStatusList,
        );

        $this->view_object_map = $viewData ;
        
        $this->view = 'detail';
        $GLOBALS['view'] = $this->view;
    }

    public function action_updateorderstatus() {
        
        
        $crmOrderId = $_REQUEST['crm_record_id'];
        if(empty($crmOrderId)) { 
            $_SESSION['PROCRM_MESSAGE_ORDER']= "Failed, CRM Order Id not supplied.";
            $this->handleRedirect($crmOrderId);
        }
        
        $orderMaster = new alan_OrderMaster();
        $orderMaster->retrieve($crmOrderId);
        
        if(empty($orderMaster ->id)){
            $_SESSION['PROCRM_MESSAGE_ORDER']= "Failed, Order master record not found.";
            $this->handleRedirect($crmOrderId);
        }
        
        
        //Basic validation 
        $selectedOrderNextStatus = $_REQUEST['ordernextstatus'];
        
        $orderNextStatusList = OrderState::getCRMNextTargetStates($orderMaster->orderstatus);
            
        if(empty($orderNextStatusList) || !is_array($orderNextStatusList) || 
                !in_array($selectedOrderNextStatus , $orderNextStatusList)){
            $_SESSION['PROCRM_MESSAGE_ORDER']= "Failed, Invalid order state selected.";
            $this->handleRedirect($crmOrderId);
        }
        
        //Address Needed
        $isAddressNeeded = false;
        if(in_array(strtolower($selectedOrderNextStatus)  , array( 'replacement',  'rto'))){
            $isAddressNeeded = true;
            $adsName = trim($_REQUEST['ads_name']);
            $adsAdsLine1= trim($_REQUEST['ads_ads_line1']);
            $adsAdsLine2 = trim($_REQUEST['ads_ads_line2']);
            $adsCity = trim($_REQUEST['ads_city']);
            $adsState = trim($_REQUEST['ads_state']);
            $adsCountry = trim($_REQUEST['ads_country']);
            $adsPincode= trim($_REQUEST['ads_pincode']);
            $adsPhone = trim($_REQUEST['ads_phone']);
            
        }
        
        //Save the order by cron
        
        $orderMaster->orderstatus = $selectedOrderNextStatus;
        $orderMaster->save ();
        
        
        if($isAddressNeeded) {
            $orderAddress = new alan_OrderAddress();
            $orderAddress -> name  = $adsName; 
            $orderAddress -> address  = $adsAdsLine1;	
            $orderAddress -> address2 = $adsAdsLine2; 	
            $orderAddress -> postcode =  $adsPincode; 
            $orderAddress -> city 	= $adsCity ; 
            $orderAddress -> state 	= $adsState ; 
            $orderAddress -> country = $adsCountry;
            $orderAddress -> phoneno =  $adsPhone; 	
            $orderAddress -> address_type = $selectedOrderNextStatus.'_address';
            $orderAddress -> orderno = $orderMaster->name;  	
            $orderAddress -> orderid  = $orderMaster->orderid;  		
            $orderAddress -> webcustomerno  = $orderMaster->webcustomerno;  	

            $orderAddressId = $orderAddress->save(); 

            $orderMaster->load_relationship('alan_ordermaster_alan_orderaddress');
            $orderMaster->alan_ordermaster_alan_orderaddress->add($orderAddressId);
            $orderMaster->save(); 
        }
        
        
        $_SESSION['PROCRM_MESSAGE_ORDER']= "Success, Status updated.";
        $this->handleRedirect($crmOrderId);

    }
    
    protected function handleRedirect($return_id, $isAjaxLoad=false){
         $redirect_url = "index.php?action=DetailView&module=alan_OrderMaster&record=$return_id";
          
        if($isAjaxLoad){
            echo "<script>SUGAR.ajaxUI.loadContent('$redirect_url');</script>\n";
        }
        else {
            header("Location: ". $redirect_url);
        }
        
        die;
    }
 
}



