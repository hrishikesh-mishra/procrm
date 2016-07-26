<?PHP

/* * *******************************************************************************
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
 * ****************************************************************************** */

/**
 * THIS CLASS IS FOR DEVELOPERS TO MAKE CUSTOMIZATIONS IN
 */
require_once('modules/alan_communicationlog/alan_communicationlog_sugar.php');

class alan_communicationlog extends alan_communicationlog_sugar 
{

    const ERP_CRM_NEW_SALE_ORDER = "Erp_CRM_New_Sale_Order";
    const MAGENTO_CRM_ORDER_STATUS_CHANGE = "Magen_CRM_Order_Status_Change";
    const UNICOM_CRM_ORDER_STATUS_CHANGE= "Unicom_CRM_Order_Status_Change";
    
    
    function alan_communicationlog() 
    {
        parent::alan_communicationlog_sugar();
    }

    /**
     * <p>Log cummunication between crm and erp <p>
     * 
     * @param String $sendData
     * @param String $response
     * @param String $status
     * @param String $orderItemId
     * @param String $objectType
     * @param String $function
     * @param String $commType
     * @param String $responseSerializedData
     * @param String $requestSerialized            fabfurnishCommunicationLogs::createNavCRMOrderImportLog(print_r($arrNavSalesOrderDetails,true), 'invalid_session', 'fail', $bobOrderNo, __METHOD__);
Data
     * @return String
     * @author Hrishikeh Mishra<sprt.email@gmail.com>
     */
    public static function log($sendData, $response, $status, $orderItemId, $objectType, $function, $commType, $responseSerializedData =null, $requestSerializedData = null)
    {
        $logObj = new alan_communicationlog();        
        $logObj-> communication_type =  $commType;
        $logObj-> function_name  = $function ;
        $logObj-> send_data = $sendData ;
        $logObj-> response = $response;
        $logObj-> date_time =  TimeDate::getInstance()->getNow(true)->asDb();
        $logObj-> status = $status;
        $logObj-> object_type = $objectType;
        $logObj-> object_id = $orderItemId;
        $logObj-> request_serialized_data = $requestSerializedData ;
        $logObj-> response_serialized_data =  $responseSerializedData ;
        
        return $logObj->save();
    }

}
