<?php
// created: 2013-01-22 22:29:41
$dictionary["alan_ordermaster_alan_orderaddress"] = array (
  'true_relationship_type' => 'one-to-one',
  'relationships' => 
  array (
    'alan_ordermaster_alan_orderaddress' => 
    array (
      'lhs_module' => 'alan_OrderMaster',
      'lhs_table' => 'alan_ordermaster',
      'lhs_key' => 'id',
      'rhs_module' => 'alan_OrderAddress',
      'rhs_table' => 'alan_orderaddress',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'alan_ordermaster_alan_orderaddress_c',
      'join_key_lhs' => 'alan_ordermaster_alan_orderaddressalan_ordermaster_ida',
      'join_key_rhs' => 'alan_ordermaster_alan_orderaddressalan_orderaddress_idb',
    ),
  ),
  'table' => 'alan_ordermaster_alan_orderaddress_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'alan_ordermaster_alan_orderaddressalan_ordermaster_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'alan_ordermaster_alan_orderaddressalan_orderaddress_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'alan_ordermaster_alan_orderaddressspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'alan_ordermaster_alan_orderaddress_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'alan_ordermaster_alan_orderaddressalan_ordermaster_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'alan_ordermaster_alan_orderaddress_idb2',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'alan_ordermaster_alan_orderaddressalan_orderaddress_idb',
      ),
    ),
  ),
);