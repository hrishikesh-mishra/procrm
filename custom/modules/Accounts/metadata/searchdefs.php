<?php

$searchdefs ['Accounts'] =
        array(
            'layout' =>
            array(
                'basic_search' =>
                array(
                    'name' =>
                    array(
                        'name' => 'name',
                        'default' => true,
                        'width' => '10%',
                    ),
                    'lastname' =>
                    array(
                        'type' => 'varchar',
                        'default' => true,
                        'label' => 'LBL_LASTNAME',
                        'width' => '10%',
                        'name' => 'lastname',
                    ),
                    'email' =>
                    array(
                        'name' => 'email',
                        'label' => 'LBL_EMAIL',
                        'type' => 'name',
                        'default' => true,
                        'width' => '10%',
                    ),
                    'mobileno' =>
                    array(
                        'type' => 'varchar',
                        'default' => true,
                        'label' => 'LBL_MOBILENO',
                        'width' => '10%',
                        'name' => 'mobileno',
                    ),
                    'phoneno' =>
                    array(
                        'type' => 'varchar',
                        'default' => true,
                        'label' => 'LBL_PHONENO',
                        'width' => '10%',
                        'name' => 'phoneno',
                    ),
                ),
                'advanced_search' =>
                array(
                ),
            ),
            'templateMeta' =>
            array(
                'maxColumns' => '3',
                'maxColumnsBasic' => '4',
                'widths' =>
                array(
                    'label' => '10',
                    'field' => '30',
                ),
            ),
);