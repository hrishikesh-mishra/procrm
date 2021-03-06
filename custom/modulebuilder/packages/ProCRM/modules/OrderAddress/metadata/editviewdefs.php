<?php
$module_name = 'alan_OrderAddress';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
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
          0 => 'name',
          1 => 
          array (
            'name' => 'name2',
            'label' => 'LBL_NAME2',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'address_type',
            'studio' => 'visible',
            'label' => 'LBL_ADDRESS_TYPE',
          ),
          1 => 
          array (
            'name' => 'email',
            'label' => 'LBL_EMAIL',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'address',
            'label' => 'LBL_ADDRESS',
          ),
          1 => 
          array (
            'name' => 'address2',
            'label' => 'LBL_ADDRESS2',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'address3',
            'label' => 'LBL_ADDRESS3',
          ),
          1 => 
          array (
            'name' => 'address4',
            'label' => 'LBL_ADDRESS4',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'phoneno',
            'label' => 'LBL_PHONENO',
          ),
          1 => 
          array (
            'name' => 'mobileno',
            'label' => 'LBL_MOBILENO',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'city',
            'label' => 'LBL_CITY',
          ),
          1 => 
          array (
            'name' => 'postcode',
            'label' => 'LBL_POSTCODE',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'state',
            'label' => 'LBL_STATE',
          ),
          1 => 
          array (
            'name' => 'country',
            'label' => 'LBL_COUNTRY',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'orderno',
            'label' => 'LBL_ORDERNO',
          ),
          1 => 
          array (
            'name' => 'webcustomerno',
            'label' => 'LBL_WEBCUSTOMERNO',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'alan_ordermaster_alan_orderaddress_name',
            'label' => 'LBL_ALAN_ORDERMASTER_ALAN_ORDERADDRESS_FROM_ALAN_ORDERMASTER_TITLE',
          ),
        ),
      ),
    ),
  ),
);
?>
