<?php
// created: 2013-01-25 20:50:06
$dictionary["alan_ordermaster_alan_orderitem"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'alan_ordermaster_alan_orderitem' => 
    array (
      'lhs_module' => 'alan_OrderMaster',
      'lhs_table' => 'alan_ordermaster',
      'lhs_key' => 'id',
      'rhs_module' => 'alan_OrderItem',
      'rhs_table' => 'alan_orderitem',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'alan_ordermaster_alan_orderitem_c',
      'join_key_lhs' => 'alan_ordermaster_alan_orderitemalan_ordermaster_ida',
      'join_key_rhs' => 'alan_ordermaster_alan_orderitemalan_orderitem_idb',
    ),
  ),
  'table' => 'alan_ordermaster_alan_orderitem_c',
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
      'name' => 'alan_ordermaster_alan_orderitemalan_ordermaster_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'alan_ordermaster_alan_orderitemalan_orderitem_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'alan_ordermaster_alan_orderitemspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'alan_ordermaster_alan_orderitem_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'alan_ordermaster_alan_orderitemalan_ordermaster_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'alan_ordermaster_alan_orderitem_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'alan_ordermaster_alan_orderitemalan_orderitem_idb',
      ),
    ),
  ),
);