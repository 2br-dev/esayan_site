{* Просмотр списка товаров в категории, просмотр результатов поиска *}

{$shop_config=ConfigLoader::byModule('shop')}
{$check_quantity=$shop_config.check_quantity}
{$list = $this_controller->api->addProductsDirs($list)}

{if $THEME_SETTINGS.enable_favorite}
    {$list = $this_controller->api->addProductsFavorite($list)}
{/if}
<div class="global-wrapper" id="account">
    <section>
            {if $no_query_error}
                <div class="container">
                    <div class="empty-list row">
                        {t}Не задан поисковый запрос{/t}
                    </div>
                </div>
            {else}
                <div id="products" class="catalog container {if $shop_config}shopVersion{/if}">
                    <div class="row">
                        <div class="col s12">
                            {if !empty($query)}
                                <h1 class="m-t-0 hidden-xs hidden-sm">{t}Результаты поиска{/t}</h1>
                            {else}
                                <h1 class="m-t-0 hidden-xs hidden-sm">Продукция</h1>
                            {/if}
                            {moduleinsert name="\Catalog\Controller\Block\Category" indexTemplate="%catalog%/blocks/category/category-product-list.tpl"}
                        </div>
                    </div>
                    {if count($list)}
                        <div class="row">
                            <div class="row flex">
                                <div class="col s12">
                                    {if $category->name == 'Торты'}
                                        {foreach $list as $product}
                                            {if $product@first}
                                                <h2>Медовики</h2>
                                            {/if}
                                        {/foreach}
                                    {else}
                                        <h2>{$category.name}</h2>
                                    {/if}
                                </div>

                                {foreach $list as $product}
                                    {include file="list_products_items.tpl" product=$product}
                                {/foreach}
                            </div>
                        </div>

{*                            <div class="pull-right">*}
{*                                {include file="%THEME%/paginator.tpl"}*}
{*                            </div>*}
                    {else}
                        <div class="empty-list">
                            {if !empty($query)}
                                {t}Извините, ничего не найдено{/t}
                            {else}
                                {t}В данной категории нет ни одного товара{/t}
                            {/if}
                        </div>
                    {/if}
                </div>
            {/if}
    </section>
</div>
