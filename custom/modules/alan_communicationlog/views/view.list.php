<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

require_once('include/MVC/View/views/view.list.php');

class alan_communicationlogViewList extends ViewList {

    public function preDisplay() {
        parent::preDisplay();
        $this->lv->targetList = true;

        //Added to remove the links
        $this->lv->show_action_dropdown = false;
        $this->lv->multiSelect = false;
        $this->lv->quickViewLinks = false;
        $this->lv->show_action_dropdown = false;
    }

    public function getModuleTitle() {
        return parent::getModuleTitle(false);
    }

    function listViewProcess() {
        $this->processSearchForm();
        $this->lv->searchColumns = $this->searchForm->searchColumns;
        if (!$this->headers)
            return;

        $this->lv->ss->assign("SEARCH", true);
        $this->lv->setup($this->seed, 'custom/modules/alan_communicationlog/tpl/ListViewGenericWithRowColorForLog.tpl', $this->where, $this->params);
        $savedSearchName = empty($_REQUEST['saved_search_select_name']) ? '' : (' - ' . $_REQUEST['saved_search_select_name']);
        echo $this->lv->display();
    }

}
