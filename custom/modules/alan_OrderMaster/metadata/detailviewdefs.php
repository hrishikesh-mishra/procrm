<?php
$module_name = 'alan_OrderMaster';
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
//          0 => 'EDIT',
//          1 => 'DUPLICATE',
//          2 => 'DELETE',
//          3 => 'FIND_DUPLICATES',
            
            1 => array(//Status change button 
                                'customCode' => '{if $fields.is_status_changable_by_crm.value} <input type="button" onclick="pro_order_chng_btn(1);" value="Change Status">{/if}'
                    ),
        ),
        'headerTpl' => 'custom/modules/alan_OrderMaster/tpl/orderstatus.tpl',
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
          0 => 'name',
          1 => 
          array (
            'name' => 'orderdate',
            'label' => 'LBL_ORDERDATE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'ordervalue',
            'label' => 'LBL_ORDERVALUE',
          ),
          1 => 
          array (
            'name' => 'mobileverified',
            'label' => 'LBL_MOBILEVERIFIED',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'paymentmethod',
            'label' => 'LBL_PAYMENTMETHOD',
          ),
          1 => 
          array (
            'name' => 'paymentstatus',
            'label' => 'LBL_PAYMENTSTATUS',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'pg_flag',
            'label' => 'LBL_PG_FLAG',
          ),
          1 => 
          array (
            'name' => 'paymentdate',
            'label' => 'LBL_PAYMENTDATE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'paymentline_amount',
            'label' => 'LBL_PAYMENTLINE_AMOUNT',
          ),
          1 => 
          array (
            'name' => 'paymentline_paymentgateway',
            'label' => 'LBL_PAYMENTLINE_PAYMENTGATEWAY',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'salespersoncode',
            'label' => 'LBL_SALESPERSONCODE',
          ),
          1 => 
          array (
            'name' => 'webcustomerno',
            'label' => 'LBL_WEBCUSTOMERNO',
            'type'=>'varchar'
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'authcode',
            'label' => 'LBL_AUTHCODE',
          ),
          1 => 
          array (
            'name' => 'paymentline_paymentrefno',
            'label' => 'LBL_PAYMENTLINE_PAYMENTREFNO',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'accounts_alan_ordermaster_1_name',
          ),
          1 => 
          array (
            'name' => 'orderstatus',
          ),
        ),
      ),
    ),
  ),
);
?>
