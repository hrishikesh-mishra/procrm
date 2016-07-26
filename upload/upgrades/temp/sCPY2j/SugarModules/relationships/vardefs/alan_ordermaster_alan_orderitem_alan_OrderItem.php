<?php
// created: 2013-01-22 23:51:26
$dictionary["alan_OrderItem"]["fields"]["alan_ordermaster_alan_orderitem"] = array (
  'name' => 'alan_ordermaster_alan_orderitem',
  'type' => 'link',
  'relationship' => 'alan_ordermaster_alan_orderitem',
  'source' => 'non-db',
  'vname' => 'LBL_ALAN_ORDERMASTER_ALAN_ORDERITEM_FROM_ALAN_ORDERMASTER_TITLE',
  'id_name' => 'alan_ordermaster_alan_orderitemalan_ordermaster_ida',
);
$dictionary["alan_OrderItem"]["fields"]["alan_ordermaster_alan_orderitem_name"] = array (
  'name' => 'alan_ordermaster_alan_orderitem_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ALAN_ORDERMASTER_ALAN_ORDERITEM_FROM_ALAN_ORDERMASTER_TITLE',
  'save' => true,
  'id_name' => 'alan_ordermaster_alan_orderitemalan_ordermaster_ida',
  'link' => 'alan_ordermaster_alan_orderitem',
  'table' => 'alan_ordermaster',
  'module' => 'alan_OrderMaster',
  'rname' => 'name',
);
$dictionary["alan_OrderItem"]["fields"]["alan_ordermaster_alan_orderitemalan_ordermaster_ida"] = array (
  'name' => 'alan_ordermaster_alan_orderitemalan_ordermaster_ida',
  'type' => 'link',
  'relationship' => 'alan_ordermaster_alan_orderitem',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_ALAN_ORDERMASTER_ALAN_ORDERITEM_FROM_ALAN_ORDERITEM_TITLE',
);
