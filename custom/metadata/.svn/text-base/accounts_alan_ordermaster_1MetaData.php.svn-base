<?php
// created: 2013-01-25 20:51:20
$dictionary["accounts_alan_ordermaster_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'accounts_alan_ordermaster_1' => 
    array (
      'lhs_module' => 'Accounts',
      'lhs_table' => 'accounts',
      'lhs_key' => 'id',
      'rhs_module' => 'alan_OrderMaster',
      'rhs_table' => 'alan_ordermaster',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'accounts_alan_ordermaster_1_c',
      'join_key_lhs' => 'accounts_alan_ordermaster_1accounts_ida',
      'join_key_rhs' => 'accounts_alan_ordermaster_1alan_ordermaster_idb',
    ),
  ),
  'table' => 'accounts_alan_ordermaster_1_c',
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
      'name' => 'accounts_alan_ordermaster_1accounts_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'accounts_alan_ordermaster_1alan_ordermaster_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'accounts_alan_ordermaster_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'accounts_alan_ordermaster_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'accounts_alan_ordermaster_1accounts_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'accounts_alan_ordermaster_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'accounts_alan_ordermaster_1alan_ordermaster_idb',
      ),
    ),
  ),
);