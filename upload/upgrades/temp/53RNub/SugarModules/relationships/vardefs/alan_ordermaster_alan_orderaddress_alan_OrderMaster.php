<?php
// created: 2013-01-22 00:10:34
$dictionary["alan_OrderMaster"]["fields"]["alan_ordermaster_alan_orderaddress"] = array (
  'name' => 'alan_ordermaster_alan_orderaddress',
  'type' => 'link',
  'relationship' => 'alan_ordermaster_alan_orderaddress',
  'source' => 'non-db',
  'vname' => 'LBL_ALAN_ORDERMASTER_ALAN_ORDERADDRESS_FROM_ALAN_ORDERADDRESS_TITLE',
  'id_name' => 'alan_ordermaster_alan_orderaddressalan_orderaddress_idb',
);
$dictionary["alan_OrderMaster"]["fields"]["alan_ordermaster_alan_orderaddress_name"] = array (
  'name' => 'alan_ordermaster_alan_orderaddress_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ALAN_ORDERMASTER_ALAN_ORDERADDRESS_FROM_ALAN_ORDERADDRESS_TITLE',
  'save' => true,
  'id_name' => 'alan_ordermaster_alan_orderaddressalan_orderaddress_idb',
  'link' => 'alan_ordermaster_alan_orderaddress',
  'table' => 'alan_orderaddress',
  'module' => 'alan_OrderAddress',
  'rname' => 'name',
);
$dictionary["alan_OrderMaster"]["fields"]["alan_ordermaster_alan_orderaddressalan_orderaddress_idb"] = array (
  'name' => 'alan_ordermaster_alan_orderaddressalan_orderaddress_idb',
  'type' => 'link',
  'relationship' => 'alan_ordermaster_alan_orderaddress',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_ALAN_ORDERMASTER_ALAN_ORDERADDRESS_FROM_ALAN_ORDERADDRESS_TITLE',
);
