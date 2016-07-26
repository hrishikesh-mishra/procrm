<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('include/MVC/View/views/view.detail.php');
require_once('custom/include/procrm/OrderState.php');


class alan_OrderMasterViewDetail extends ViewDetail
{
    public function __construct()
    {
        parent::ViewDetail();
    }

   
    public function display()
    {
     
        $procrmOrderMessage  =  "";
        if(isset($_SESSION['PROCRM_MESSAGE_ORDER']) && !empty($_SESSION['PROCRM_MESSAGE_ORDER'])){
            $procrmOrderMessage  = $_SESSION['PROCRM_MESSAGE_ORDER'];
            unset($_SESSION['PROCRM_MESSAGE_ORDER']);
        }
        
        $this->ss->assign('orderNextStatus',$this->view_object_map['orderNextStatus']);
        $this->ss->assign('isOrderStatusChangable',$this->view_object_map['isOrderStatusChangable']);
        $this->ss->assign("procrmOrderMessage",$procrmOrderMessage);
        $this->ss->assign("procrmOrderId",$this->bean->id);
        
        parent::display();
    }
    
    
  
    
    
}