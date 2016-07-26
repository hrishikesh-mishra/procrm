<?php
$module_name = 'alan_logs';
$listViewDefs [$module_name] = 
array (
  'CREATED_BY_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_CREATED',
    'id' => 'CREATED_BY',
    'width' => '10%',
    'default' => true,
  ),
  'FUNC' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_FUNC',
    'width' => '10%',
    'default' => true,
  ),
  'SOURCE_FILE' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_SOURCE_FILE',
    'width' => '10%',
    'default' => true,
  ),
  'LINE' => 
  array (
    'type' => 'int',
    'label' => 'LBL_LINE',
    'width' => '10%',
    'default' => true,
  ),
);
?>
