{if $products}
    {foreach $products as $product}
        <div class="product-card swiper-slide">
            <a class="popular-image-wrapper" href="{$product->getUrl()}">
            <span class="lazy popular-image" data-src="{$product['__cover']->getLink()}">
                <span class="article">{$product['barcode']}</span>
            </span>
            </a>
            <div class="data-block">
                <div class="name-block">
                    <a class="name" href="{$product->getUrl()}">{$product['title']}</a>
                </div>
                <div class="card-separator"></div>
                <div class="data-wrapper">
                    <div class="data">
                        <div class="prices">
                            {if $product->isOffersUse()}
                                {$offers = $product->getOffers()}
                                {foreach $offers as $offer}
                                    <div class="price-block">
                                        <div class="weight">{$offer['title']}г</div>
                                        <div class="separator"></div>
                                        <div class="price">
                                            {if $offer->isMain()}
                                                {$product->getCost()/$offer['propsdata_arr']['коробок в упаковке']}₽
                                            {else}
                                                {$offer['pricedata_arr']['oneprice']['value']/$offer['propsdata_arr']['коробок в упаковке']}₽
                                            {/if}
                                        </div>
                                    </div>
                                {/foreach}
                            {/if}
                        </div>
                    </div>
                    <div class="action">
                        <a href="" class="btn circle"><i class="mdi mdi-cart-plus"></i></a>
                    </div>
                </div>
            </div>
        </div>
    {/foreach}
{else}
    <div class="col-padding">
        {include file="%THEME%/block_stub.tpl"  class="block-top-products" do=[
        [
        'title' => t("Добавьте категории товаров"),
        'href' => {adminUrl do=false mod_controller="catalog-ctrl"}
        ],
        [
        'title' => t("Настройте блок"),
        'href' => {$this_controller->getSettingUrl()},
        'class' => 'crud-add'
        ]
        ]}
    </div>
{/if}
