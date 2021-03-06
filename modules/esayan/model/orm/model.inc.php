<?php

namespace esayan\Model\Orm;

use RS\Orm\OrmObject;
use RS\Orm\Type;

/**
 * ORM объект
 */
class Model extends OrmObject
{
    protected static $table = 'testmodule_esayan';

    function _init()
    {
        parent::_init()->append([
            'title' => new Type\Varchar([
                'description' => t('Название'),
            ])
        ]);
    }
}
