{$imagelist = $product->getImages(false)}
{if $product['id'] == 5}
    <div class="col s12">
        <h2>Торты</h2>
    </div>
{/if}
<div {$product->getDebugAttributes()} data-id="{$product.id}"
                                      class="rs-product-item col l3 m6 s12 card card-product {if count($imagelist)>1}rs-photo-view{/if}
                                                               {if $product->isOffersUse() || $product->isMultiOffersUse()} rs-show-offer-select{/if}">

{*    <div class="row flex">*}
{*        <div class="col s12">*}
{*            {if $product->getMainDir()->name == 'Торты'}*}
{*                {if $product@first}*}
{*                    <h2>Медовики</h2>*}
{*                {else}*}
{*                    {if $product['id'] == 5}*}
{*                        <h2>Торты</h2>*}
{*                    {/if}*}
{*                {/if}*}
{*            {else}*}
{*                {if $product@first}*}
{*                    <h2>{$category.name}</h2>*}
{*                {/if}*}
{*            {/if}*}
{*        </div>*}
{*        <div class="col l3 m6 s12">*}
            <div class="product-card">
                <a class="popular-image-wrapper" href="{$product->getUrl()}">
                    {if $product['cover'] != ''}
                        <span class="lazy popular-image" data-src="{$product['__cover']->getLink()}">
                            <span class="article">{$product['barcode']}</span>
                        </span>
                    {else}
                        <span class="lazy popular-image" data-src="{$product->getMainImage()->getOriginalUrl()}">
                            <span class="article">{$product['barcode']}</span>
                        </span>
                    {/if}
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
                                {else}
                                    <div class="price-block">
                                        <div class="weight">{$offer['title']}г</div>
                                        <div class="separator"></div>
                                        <div class="price"></div>
                                    </div>
                                {/if}
                            </div>
                        </div>
                        <div class="action">
                            <a href="" class="btn circle"><i class="mdi mdi-cart-plus"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
{*    </div>*}
{*</div>*}
