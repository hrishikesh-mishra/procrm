<?php

/**
 * Order state library class 
 * 
 * Hrishikesh <sprt.email@gmail.com>
 * 
 */
class OrderState {
    /**
     * All valid state of order 
     */

    CONST COMPLETE_CONFIRMED_DELIVERED = 'complete_confirmed-delivered';
    CONST CANCELED = 'canceled';
    CONST COMPLETE_SHIPPED = 'complete-shipped';
    CONST HOLDED = 'holded';
    CONST PARTIAL = 'partial';
    CONST PENDING = 'pending';
    CONST PREPAID = 'prepaid';
    CONST PROCESSING = 'processing';
    CONST REPLACEMENT = 'replacement';
    CONST RTO = 'rto';
    CONST PARTIAL_DELIVERED = 'partial delivered';

    /**
     * @var Array <p>All valid state of order  </p>
     */
    private static $_allValidState = array(
        self::COMPLETE_CONFIRMED_DELIVERED,
        self::CANCELED,
        self::COMPLETE_SHIPPED,
        self::HOLDED,
        self::PARTIAL,
        self::PENDING,
        self::PREPAID,
        self::PROCESSING,
        self::REPLACEMENT,
        self::RTO,
        self::PARTIAL_DELIVERED,
    );

    /**
     * @var Array <p>List of state change by CRM </p>
     */
    private static $_stateChangeByCRM = array(
        self::COMPLETE_CONFIRMED_DELIVERED => array(self::REPLACEMENT, self::RTO,),
      //  self::CANCELED => array(),
        self::COMPLETE_SHIPPED => array(self::REPLACEMENT, self::RTO,),
        self::HOLDED => array(self::CANCELED, self::REPLACEMENT,),
        self::PARTIAL => array(self::CANCELED, self::REPLACEMENT, self::RTO, self::HOLDED),
        //self::PENDING => array(),
        self::PREPAID => array(self::CANCELED, self::REPLACEMENT, self::HOLDED),
        self::PROCESSING => array(self::CANCELED, self::REPLACEMENT, self::HOLDED),
        self::REPLACEMENT => array(self::CANCELED, self::RTO, self::HOLDED),
        self::RTO => array(self::CANCELED, self::REPLACEMENT, self::HOLDED),
        self::PARTIAL_DELIVERED => array(self::REPLACEMENT, self::RTO,),
    );

    /**
     * @var Array <p>Status change by Magneto</p> 
     */
    private static $_stateChangeByMagento = array(
        self::PENDING,
        self::PREPAID,
        self::PROCESSING,
    );

    /**
     * @var Array <p>Status change by Unicomerce </p>
     */
    private static $_stateChangeByUnicomerce = array(
        self::COMPLETE_CONFIRMED_DELIVERED,
        self::COMPLETE_SHIPPED,
        self::PARTIAL,
        self::PARTIAL_DELIVERED,
    );

    /**
     * <p>Get all valid state of Order </p>
     * @param void
     * @return Array
     * @access public
     * 
     */
    public static function getAllValidState() {
        return self::$_allValidState;
    }
    
    
    /**
     * <p>Is valid order state for new order </p>
     * @param String $status
     * @return boolean
     * @access public
     */
    public static function isValidStateForNewOrder($status){
        $status = strtolower($status);

        if (in_array($status, array_map('strtolower', self::$_allValidState))) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    /**
     * <p>Is status changable by Unicomerce </p>
     * @param String $status
     * @return boolean
     * @access public
     */
    public static function isStatusChangeablByUnicomerce($status) {
        $status = strtolower($status);

        if (in_array($status, array_map('strtolower', self::$_stateChangeByUnicomerce))) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    
    /**
     * <p>Is status changable by Magento </p>
     * @param String $status
     * @return boolean
     * @access public
     */
    public static function isStatusChangeableByMagento($status) {
        $status = strtolower($status);

        if (in_array($status, array_map('strtolower', self::$_stateChangeByMagento))) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    /**<p>Is status changable by By CRM </p>
     * 
     * @param String $status
     * @return boolean
     * @access public
     * 
     */
    public static function isStatusChangeableByCRM($status) {
        $status = strtolower($status);

        if (in_array($status, array_map('strtolower', array_keys(self::$_stateChangeByCRM)))) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    /**
     * <p>Get the next order status for crm </p>
     * @param String $status
     * @return Array|boolean
     * @access public
     */
    public static function getCRMNextTargetStates($status) {

        $status = strtolower($status);
        
        $tmpArray  = array_change_key_case(self::$_stateChangeByCRM);
        
        if (array_key_exists($status , $tmpArray )){
            return $tmpArray [$status] ; 
        } 
        else{
            return FALSE; 
        }
        
    }

}
