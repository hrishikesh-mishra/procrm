<?php

/*
 * This bean file is created for customizatio of account module
 * @author Hrishikesh <sprt.email@gmail.com>
 * @date: Jan-2012
 */

if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once("modules/Accounts/Account.php");

// Customize Account bean class (Customer module) 
class AccountCustom extends Account 
{
    
    
    //Custom field added for ERP system 
    var $customertype;	
    var $webcustomerno;	
    var $lastname;	
    var $address;	
    var $address2;	
    var $address3;	
    var $address4;	
    var $postcode;	
    var $city;	
    var $state;	
    var $country;	
    var $phoneno;	
    var $mobileno;	
    var $stylist;
    
    
    /**
     * Class Constructor 
     */
    public function AccountCustom()
    {
        parent::Account();
    } 
    
    
    public function checkCustomerExistByWebCustomerNo($webCustomerNo)
    {
        $db =   DBManagerFactory::getInstance();
        
        $sqlQuery = "   SELECT id FROM 
                            accounts 
                        WHERE webcustomerno = '".$db->quote($webCustomerNo)."'";
        
        $queryRes = $db->query($sqlQuery);
        
        if ($queryRes && $db->getRowCount($queryRes))
        {
            $row = $db->fetchByAssoc($queryRes);
            return $row['id'];
        }
        
        return false;
        
    }
     
    
}
