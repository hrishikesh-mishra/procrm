<?php

$dictionary["alan_OrderMaster"]["fields"]["orderstatus"] = array (
    'name' => 'orderstatus',
    'vname' => 'LBL_ORDERSTATUS',
    'type' => 'varchar',
    'len'=>50,
    'comment' => 'Order status',
    'audited' => true,
    
);

$dictionary["alan_OrderMaster"]["fields"]["is_status_changable_by_crm"] = array (
    'name' => 'is_status_changable_by_crm',
    'vname' => 'LBL_ISSTATUSCHANGABLEBYCRM',
    'type' => 'bool',
    'default' =>FALSE,
    'source' => 'non-db',
    'comment' => 'Is Status Changable'
);


$dictionary['alan_OrderMaster']["indices"]= array ( 
    array('name' =>'alan_ordermaster_name_uniqu_index', 'type' =>'unique', 'fields'=>array('name')),
    array('name' =>'order_paymentmethod_index', 'type' =>'index', 'fields'=>array('paymentmethod')),
);