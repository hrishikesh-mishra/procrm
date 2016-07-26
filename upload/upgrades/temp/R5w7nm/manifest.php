<?php
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2012 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/


// THIS CONTENT IS GENERATED BY MBPackage.php
$manifest = array (
  0 => 
  array (
    'acceptable_sugar_versions' => 
    array (
      0 => '',
    ),
  ),
  1 => 
  array (
    'acceptable_sugar_flavors' => 
    array (
      0 => 'CE',
      1 => 'PRO',
      2 => 'ENT',
    ),
  ),
  'readme' => '',
  'key' => 'alan',
  'author' => 'Alan Turing',
  'description' => '',
  'icon' => '',
  'is_uninstallable' => true,
  'name' => 'ProCRM',
  'published_date' => '2013-01-22 18:24:54',
  'type' => 'module',
  'version' => 1358879094,
  'remove_tables' => 'prompt',
);


$installdefs = array (
  'id' => 'ProCRM',
  'beans' => 
  array (
    0 => 
    array (
      'module' => 'alan_OrderMaster',
      'class' => 'alan_OrderMaster',
      'path' => 'modules/alan_OrderMaster/alan_OrderMaster.php',
      'tab' => true,
    ),
    1 => 
    array (
      'module' => 'alan_communicationlog',
      'class' => 'alan_communicationlog',
      'path' => 'modules/alan_communicationlog/alan_communicationlog.php',
      'tab' => true,
    ),
    2 => 
    array (
      'module' => 'alan_OrderItem',
      'class' => 'alan_OrderItem',
      'path' => 'modules/alan_OrderItem/alan_OrderItem.php',
      'tab' => true,
    ),
    3 => 
    array (
      'module' => 'alan_OrderAddress',
      'class' => 'alan_OrderAddress',
      'path' => 'modules/alan_OrderAddress/alan_OrderAddress.php',
      'tab' => true,
    ),
    4 => 
    array (
      'module' => 'alan_logs',
      'class' => 'alan_logs',
      'path' => 'modules/alan_logs/alan_logs.php',
      'tab' => true,
    ),
  ),
  'layoutdefs' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/alan_ordermaster_alan_orderitem_alan_OrderMaster.php',
      'to_module' => 'alan_OrderMaster',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/alan_ordermaster_alan_orderaddress_alan_OrderMaster.php',
      'to_module' => 'alan_OrderMaster',
    ),
  ),
  'relationships' => 
  array (
    0 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/alan_ordermaster_alan_orderitemMetaData.php',
    ),
    1 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/alan_ordermaster_alan_orderaddressMetaData.php',
    ),
  ),
  'image_dir' => '<basepath>/icons',
  'copy' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/modules/alan_OrderMaster',
      'to' => 'modules/alan_OrderMaster',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/modules/alan_communicationlog',
      'to' => 'modules/alan_communicationlog',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/modules/alan_OrderItem',
      'to' => 'modules/alan_OrderItem',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/modules/alan_OrderAddress',
      'to' => 'modules/alan_OrderAddress',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/modules/alan_logs',
      'to' => 'modules/alan_logs',
    ),
  ),
  'language' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/alan_OrderItem.php',
      'to_module' => 'alan_OrderItem',
      'language' => 'en_us',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/alan_OrderMaster.php',
      'to_module' => 'alan_OrderMaster',
      'language' => 'en_us',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/alan_OrderAddress.php',
      'to_module' => 'alan_OrderAddress',
      'language' => 'en_us',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/alan_OrderMaster.php',
      'to_module' => 'alan_OrderMaster',
      'language' => 'en_us',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/language/application/en_us.lang.php',
      'to_module' => 'application',
      'language' => 'en_us',
    ),
  ),
  'vardefs' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/alan_ordermaster_alan_orderitem_alan_OrderItem.php',
      'to_module' => 'alan_OrderItem',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/alan_ordermaster_alan_orderitem_alan_OrderMaster.php',
      'to_module' => 'alan_OrderMaster',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/alan_ordermaster_alan_orderaddress_alan_OrderAddress.php',
      'to_module' => 'alan_OrderAddress',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/alan_ordermaster_alan_orderaddress_alan_OrderMaster.php',
      'to_module' => 'alan_OrderMaster',
    ),
  ),
  'layoutfields' => 
  array (
    0 => 
    array (
      'additional_fields' => 
      array (
      ),
    ),
    1 => 
    array (
      'additional_fields' => 
      array (
      ),
    ),
  ),
);