<?php
$module_name = 'alan_OrderMaster';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'orderdate' => 
      array (
        'type' => 'datetimecombo',
        'label' => 'LBL_ORDERDATE',
        'width' => '10%',
        'default' => true,
        'name' => 'orderdate',
      ),
      'paymentmethod' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_PAYMENTMETHOD',
        'width' => '10%',
        'default' => true,
        'name' => 'paymentmethod',
      ),
      'ordervalue' => 
      array (
        'type' => 'float',
        'label' => 'LBL_ORDERVALUE',
        'width' => '10%',
        'default' => true,
        'name' => 'ordervalue',
      ),
    ),
    'advanced_search' => 
    array (
      'assigned_user_id' => 
      array (
        'name' => 'assigned_user_id',
        'label' => 'LBL_ASSIGNED_TO',
        'type' => 'enum',
        'function' => 
        array (
          'name' => 'get_user_array',
          'params' => 
          array (
            0 => false,
          ),
        ),
        'default' => true,
        'width' => '10%',
      ),
    ),
  ),
  'templateMeta' => 
  array (
    'maxColumns' => '3',
    'maxColumnsBasic' => '4',
    'widths' => 
    array (
      'label' => '10',
      'field' => '30',
    ),
  ),
);
?>
