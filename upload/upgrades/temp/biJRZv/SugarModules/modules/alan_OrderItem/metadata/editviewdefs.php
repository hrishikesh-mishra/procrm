<?php
$module_name = 'alan_OrderItem';
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
      'syncDetailEditViews' => false,
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
            'name' => 'color',
            'label' => 'LBL_COLOR',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'itemcode',
            'label' => 'LBL_ITEMCODE',
          ),
          1 => 
          array (
            'name' => 'itemno',
            'label' => 'LBL_ITEMNO',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'itemtype',
            'label' => 'LBL_ITEMTYPE',
          ),
          1 => 
          array (
            'name' => 'quantity',
            'label' => 'LBL_QUANTITY',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'size',
            'label' => 'LBL_SIZE',
          ),
          1 => 
          array (
            'name' => 'unitamount',
            'label' => 'LBL_UNITAMOUNT',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'discountamount',
            'label' => 'LBL_DISCOUNTAMOUNT',
          ),
          1 => 
          array (
            'name' => 'orderno',
            'label' => 'LBL_ORDERNO',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'webcustomerno',
            'label' => 'LBL_WEBCUSTOMERNO',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'alan_ordermaster_alan_orderitem_name',
          ),
        ),
      ),
    ),
  ),
);
?>
