<?php
 // created: 2013-01-22 23:54:54
$layout_defs["alan_OrderMaster"]["subpanel_setup"]['alan_ordermaster_alan_orderaddress'] = array (
  'order' => 100,
  'module' => 'alan_OrderAddress',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_ALAN_ORDERMASTER_ALAN_ORDERADDRESS_FROM_ALAN_ORDERADDRESS_TITLE',
  'get_subpanel_data' => 'alan_ordermaster_alan_orderaddress',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
