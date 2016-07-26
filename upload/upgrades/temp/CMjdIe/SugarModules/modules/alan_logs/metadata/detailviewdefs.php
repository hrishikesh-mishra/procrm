<?php
$module_name = 'alan_logs';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'date_entered',
          1 => 
          array (
            'name' => 'issue_level',
            'label' => 'LBL_ISSUE_LEVEL',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'func',
            'label' => 'LBL_FUNC',
          ),
          1 => 
          array (
            'name' => 'line',
            'label' => 'LBL_LINE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'source_file',
            'label' => 'LBL_SOURCE_FILE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'issue',
            'studio' => 'visible',
            'label' => 'LBL_ISSUE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'serialized_data',
            'studio' => 'visible',
            'label' => 'LBL_SERIALIZED_DATA',
          ),
        ),
      ),
    ),
  ),
);
?>
