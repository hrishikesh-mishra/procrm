<?php
 if(!defined('sugarEntry'))define('sugarEntry', true);

/**
 * This is a soap entry point for soap version 2
 */
chdir('../../..');

require_once 'custom/service/core/ErpCRM.php';

$webservice_class = 'SugarSoapService2';
$webservice_path = 'service/v2/SugarSoapService2.php';
$registry_class = 'ErpCRMSoapRegistry';
$registry_path = 'custom/service/v4/ErpCRMSoapRegistry.php';
$webservice_impl_class = 'ErpCrmWebserviceSoap';
$location = '/custom/service/v4/soap.php';
require_once('service/core/webservice.php');  