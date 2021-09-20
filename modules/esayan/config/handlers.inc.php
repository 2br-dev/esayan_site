<?php

namespace esayan\Config;

use RS\Event\HandlerAbstract;
use RS\Orm\Type\Integer;
use RS\Orm\Type\Richtext;
use RS\Orm\Type\Varchar;
use RS\Router\Route as RouterRoute;

/**
 * Класс содержит обработчики событий, на которые подписан модуль
 */
class Handlers extends HandlerAbstract
{
    /**
     * Добавляет подписку на события
     *
     * @return void
     */
    function init()
    {
        $this->bind('orm.init.catalog-product');
    }

    public static function ormInitCatalogProduct(\Catalog\Model\Orm\Product $orm)
    {
        $orm->getPropertyIterator()->append([
            t('Техническая информация'),
                'consist' => new Richtext([
                    'description' => 'Состав продукта'
                ]),
                'nutritional_value' => new Richtext([
                    'description' => t('Пищевая ценность на 100 гр.')
                ]),
                'energy_value' => new Varchar([
                    'description' => t('Энергетическая ценность')
                ]),
                'shelf_life' => new Integer([
                    'description' => t('Срок хранения (мес)')
                ]),
                'temp' => new Varchar([
                    'description' => t('Температура хранения')
                ]),
            t('Фото для списка'),
                'cover' => new \RS\Orm\Type\Image(array(
                    'description' => t('Обложка для списка товаров'),
                    'max_file_size'    => 10000000, //Максимальный размер - 10 Мб
                    'allow_file_types' => array('image/pjpeg', 'image/jpeg', 'image/png', 'image/gif'),//Допустимы форматы jpg, png, gif
                )),
            t('Ингредиеты'),
                'armored_milk' => new Integer([
                    'description' => t('Сгущенное молоко'),
                    'checkboxView' => [1,0],
                    'default' => 0,
                    'maxLength' => 1
                ]),
                'walnut' => new Integer([
                    'description' => t('Грецкий орех'),
                    'maxLength' => 1,
                    'checkboxView' => [1,0],
                    'default' => 0
                ]),
                'honey' => new Integer([
                    'description' => t('Натуральный мед'),
                    'maxLength' => 1,
                    'checkboxView' => [1,0],
                    'default' => 0
                ]),
                'butter' => new Integer([
                    'description' => t('Сливочное масло'),
                    'maxLength' => 1,
                    'checkboxView' => [1,0],
                    'default' => 0
                ]),
                'chocolate' => new Integer([
                    'description' => t('Натуральный шоколад'),
                    'maxLength' => 1,
                    'checkboxView' => [1,0],
                    'default' => 0
                ]),
                'peanut' => new Integer([
                    'description' => t('Обжаренный арахис'),
                    'maxLength' => 1,
                    'checkboxView' => [1,0],
                    'default' => 0
                ]),
                'poppy' => new Integer([
                    'description' => t('Кондитерский мак'),
                    'maxLength' => 1,
                    'checkboxView' => [1,0],
                    'default' => 0
                ]),
                'sour_cream' => new Integer([
                    'description' => t('Домашняя сметана'),
                    'maxLength' => 1,
                    'checkboxView' => [1,0],
                    'default' => 0
                ]),
                'cream' => new Integer([
                    'description' => t('Натуральные сливки'),
                    'maxLength' => 1,
                    'checkboxView' => [1,0],
                    'default' => 0
                ]),
                'curd' => new Integer([
                    'description' => t('Творожная начинка'),
                    'maxLength' => 1,
                    'checkboxView' => [1,0],
                    'default' => 0
                ]),
                'cocoa' => new Integer([
                    'description' => t('Натуральное какао'),
                    'maxLength' => 1,
                    'checkboxView' => [1,0],
                    'default' => 0
                ]),
            t('Тема'),
                'theme_color' => new Varchar([
                    'description' => t('Цвет фона'),
                    'listFromArray' => [[
                        'default' => 'по умолчанию',
                        'orange' => 'оранжевый',
                        'bordo' => 'бордовый',
                        'blue' => 'синий',
                        'bedge' => 'бежевый',
                        'choco' =>  'шоколадный',
                        'pink' => 'розовый',
                        'light-bedge' => 'светло-бежевый',
                        'light-blue' => 'светло-голубой',
                        'light-pink' => 'светло-розовый'
                    ]],
                    'default' => 'default'
                ]),
                'dark_ico' => new Integer([
                    'description' => t('Темные иконки'),
                    'maxLength' => 1,
                    'checkboxView' => [1,0],
                    'default' => 0
                ])
        ]);
    }

    /**
     * Возвращает маршруты данного модуля. Откликается на событие getRoute.
     * @param array $routes - массив с объектами маршрутов
     * @return array of \RS\Router\Route
     */
    public static function getRoute(array $routes)
    {
        $routes[] = new RouterRoute('esayan-front-ctrl', [
            '/testmodule-esayan/',
        ], null, 'Роут модуля esayan');

        return $routes;
    }

    /**
     * Возвращает пункты меню этого модуля в виде массива
     * @param array $items - массив с пунктами меню
     * @return array
     */
    public static function getMenus($items)
    {
        $items[] = [
            'title' => 'Пункт модуля esayan',
            'alias' => 'esayan-control',
            'link' => '%ADMINPATH%/esayan-control/',
            'parent' => 'modules',
            'sortn' => 40,
            'typelink' => 'link',
        ];
        return $items;
    }
}
