<?php
$module_name = 'alan_OrderItem';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'itemtype' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_ITEMTYPE',
        'width' => '10%',
        'default' => true,
        'name' => 'itemtype',
      ),
      'itemno' => 
      array (
        'type' => 'int',
        'label' => 'LBL_ITEMNO',
        'width' => '10%',
        'default' => true,
        'name' => 'itemno',
      ),
      'color' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_COLOR',
        'width' => '10%',
        'default' => true,
        'name' => 'color',
      ),
      'size' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_SIZE',
        'width' => '10%',
        'default' => true,
        'name' => 'size',
      ),
      'orderno' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_ORDERNO',
        'width' => '10%',
        'default' => true,
        'name' => 'orderno',
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
