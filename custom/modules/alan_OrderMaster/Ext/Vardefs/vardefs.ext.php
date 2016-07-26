<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2013-01-25 20:50:06
$dictionary["alan_OrderMaster"]["fields"]["alan_ordermaster_alan_orderaddress"] = array (
  'name' => 'alan_ordermaster_alan_orderaddress',
  'type' => 'link',
  'relationship' => 'alan_ordermaster_alan_orderaddress',
  'source' => 'non-db',
  'side' => 'right',
  'vname' => 'LBL_ALAN_ORDERMASTER_ALAN_ORDERADDRESS_FROM_ALAN_ORDERADDRESS_TITLE',
);



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

// created: 2013-01-25 20:50:06
$dictionary["alan_OrderMaster"]["fields"]["alan_ordermaster_alan_orderitem"] = array (
  'name' => 'alan_ordermaster_alan_orderitem',
  'type' => 'link',
  'relationship' => 'alan_ordermaster_alan_orderitem',
  'source' => 'non-db',
  'side' => 'right',
  'vname' => 'LBL_ALAN_ORDERMASTER_ALAN_ORDERITEM_FROM_ALAN_ORDERITEM_TITLE',
);


// created: 2013-01-25 20:51:20
$dictionary["alan_OrderMaster"]["fields"]["accounts_alan_ordermaster_1"] = array (
  'name' => 'accounts_alan_ordermaster_1',
  'type' => 'link',
  'relationship' => 'accounts_alan_ordermaster_1',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_ALAN_ORDERMASTER_1_FROM_ACCOUNTS_TITLE',
  'id_name' => 'accounts_alan_ordermaster_1accounts_ida',
);
$dictionary["alan_OrderMaster"]["fields"]["accounts_alan_ordermaster_1_name"] = array (
  'name' => 'accounts_alan_ordermaster_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_ALAN_ORDERMASTER_1_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'accounts_alan_ordermaster_1accounts_ida',
  'link' => 'accounts_alan_ordermaster_1',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["alan_OrderMaster"]["fields"]["accounts_alan_ordermaster_1accounts_ida"] = array (
  'name' => 'accounts_alan_ordermaster_1accounts_ida',
  'type' => 'link',
  'relationship' => 'accounts_alan_ordermaster_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_ACCOUNTS_ALAN_ORDERMASTER_1_FROM_ALAN_ORDERMASTER_TITLE',
);

?>