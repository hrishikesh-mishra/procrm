<?php

class alan_communicationlogController extends SugarController {
    
    function action_testme(){
        echo  "Time ::  " . TimeDate::getInstance()->getNow(true)->asDb();
        
    }
    
}


        
        