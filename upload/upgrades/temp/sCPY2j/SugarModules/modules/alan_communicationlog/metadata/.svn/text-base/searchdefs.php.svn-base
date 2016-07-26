<?php
$module_name = 'alan_communicationlog';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'date_entered' => 
      array (
        'type' => 'datetime',
        'label' => 'LBL_DATE_ENTERED',
        'width' => '10%',
        'default' => true,
        'name' => 'date_entered',
      ),
      'communication_type' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_COMMUNICATION_TYPE',
        'width' => '10%',
        'default' => true,
        'name' => 'communication_type',
      ),
      'function_name' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_FUNCTION_NAME',
        'width' => '10%',
        'default' => true,
        'name' => 'function_name',
      ),
      'status' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_STATUS',
        'width' => '10%',
        'default' => true,
        'name' => 'status',
      ),
      'object_id' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_OBJECT_ID',
        'width' => '10%',
        'default' => true,
        'name' => 'object_id',
      ),
      'object_type' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_OBJECT_TYPE',
        'width' => '10%',
        'default' => true,
        'name' => 'object_type',
      ),
    ),
    'advanced_search' => 
    array (
      0 => 'name',
      1 => 
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
