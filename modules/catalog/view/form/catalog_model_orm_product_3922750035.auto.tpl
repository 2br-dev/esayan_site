
<div class="formbox" >
            
    <div class="rs-tabs" role="tabpanel">
        <ul class="tab-nav" role="tablist">
                    <li class=" active"><a data-target="#catalog-product-tab0" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(0)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab1" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(1)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab2" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(2)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab3" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(3)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab4" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(4)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab5" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(5)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab6" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(6)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab7" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(7)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab8" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(8)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab9" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(9)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab10" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(10)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab11" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(11)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab12" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(12)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab13" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(13)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab14" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(14)}</a></li>
                    <li class=""><a data-target="#catalog-product-tab15" data-toggle="tab" role="tab">{$elem->getPropertyIterator()->getGroupName(15)}</a></li>
        
        </ul>
        <form method="POST" action="{urlmake}" enctype="multipart/form-data" class="tab-content crud-form">
            <input type="submit" value="" style="display:none"/>
                        <div class="tab-pane active" id="catalog-product-tab0" role="tabpanel">
                                                                                                                                    {include file=$elem.__id->getRenderTemplate() field=$elem.__id}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {include file=$elem.___tmpid->getRenderTemplate() field=$elem.___tmpid}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                            <table class="otable">
                                                                                                                                                        
                                <tr>
                                    <td class="otitle">{$elem.__title->getTitle()}&nbsp;&nbsp;{if $elem.__title->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__title->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__title->getRenderTemplate() field=$elem.__title}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__alias->getTitle()}&nbsp;&nbsp;{if $elem.__alias->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__alias->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__alias->getRenderTemplate() field=$elem.__alias}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__short_description->getTitle()}&nbsp;&nbsp;{if $elem.__short_description->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__short_description->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__short_description->getRenderTemplate() field=$elem.__short_description}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__description->getTitle()}&nbsp;&nbsp;{if $elem.__description->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__description->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__description->getRenderTemplate() field=$elem.__description}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__barcode->getTitle()}&nbsp;&nbsp;{if $elem.__barcode->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__barcode->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__barcode->getRenderTemplate() field=$elem.__barcode}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__weight->getTitle()}&nbsp;&nbsp;{if $elem.__weight->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__weight->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__weight->getRenderTemplate() field=$elem.__weight}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__dateof->getTitle()}&nbsp;&nbsp;{if $elem.__dateof->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__dateof->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__dateof->getRenderTemplate() field=$elem.__dateof}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__excost->getTitle()}&nbsp;&nbsp;{if $elem.__excost->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__excost->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__excost->getRenderTemplate() field=$elem.__excost}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__amount_step->getTitle()}&nbsp;&nbsp;{if $elem.__amount_step->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__amount_step->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__amount_step->getRenderTemplate() field=$elem.__amount_step}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__unit->getTitle()}&nbsp;&nbsp;{if $elem.__unit->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__unit->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__unit->getRenderTemplate() field=$elem.__unit}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__min_order->getTitle()}&nbsp;&nbsp;{if $elem.__min_order->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__min_order->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__min_order->getRenderTemplate() field=$elem.__min_order}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__max_order->getTitle()}&nbsp;&nbsp;{if $elem.__max_order->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__max_order->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__max_order->getRenderTemplate() field=$elem.__max_order}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__public->getTitle()}&nbsp;&nbsp;{if $elem.__public->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__public->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__public->getRenderTemplate() field=$elem.__public}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__no_export->getTitle()}&nbsp;&nbsp;{if $elem.__no_export->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__no_export->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__no_export->getRenderTemplate() field=$elem.__no_export}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__xdir->getTitle()}&nbsp;&nbsp;{if $elem.__xdir->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__xdir->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__xdir->getRenderTemplate() field=$elem.__xdir}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__maindir->getTitle()}&nbsp;&nbsp;{if $elem.__maindir->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__maindir->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__maindir->getRenderTemplate() field=$elem.__maindir}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__xspec->getTitle()}&nbsp;&nbsp;{if $elem.__xspec->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__xspec->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__xspec->getRenderTemplate() field=$elem.__xspec}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__reservation->getTitle()}&nbsp;&nbsp;{if $elem.__reservation->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__reservation->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__reservation->getRenderTemplate() field=$elem.__reservation}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__brand_id->getTitle()}&nbsp;&nbsp;{if $elem.__brand_id->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__brand_id->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__brand_id->getRenderTemplate() field=$elem.__brand_id}</td>
                                </tr>
                                
                                                                                                                                                                                        
                                <tr>
                                    <td class="otitle">{$elem.__rating->getTitle()}&nbsp;&nbsp;{if $elem.__rating->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__rating->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__rating->getRenderTemplate() field=$elem.__rating}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__group_id->getTitle()}&nbsp;&nbsp;{if $elem.__group_id->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__group_id->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__group_id->getRenderTemplate() field=$elem.__group_id}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__xml_id->getTitle()}&nbsp;&nbsp;{if $elem.__xml_id->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__xml_id->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__xml_id->getRenderTemplate() field=$elem.__xml_id}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__sku->getTitle()}&nbsp;&nbsp;{if $elem.__sku->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__sku->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__sku->getRenderTemplate() field=$elem.__sku}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__sortn->getTitle()}&nbsp;&nbsp;{if $elem.__sortn->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__sortn->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__sortn->getRenderTemplate() field=$elem.__sortn}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__disallow_manually_add_to_cart->getTitle()}&nbsp;&nbsp;{if $elem.__disallow_manually_add_to_cart->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__disallow_manually_add_to_cart->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__disallow_manually_add_to_cart->getRenderTemplate() field=$elem.__disallow_manually_add_to_cart}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__payment_subject->getTitle()}&nbsp;&nbsp;{if $elem.__payment_subject->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__payment_subject->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__payment_subject->getRenderTemplate() field=$elem.__payment_subject}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__payment_method->getTitle()}&nbsp;&nbsp;{if $elem.__payment_method->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__payment_method->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__payment_method->getRenderTemplate() field=$elem.__payment_method}</td>
                                </tr>
                                
                                                            
                        </table>
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab1" role="tabpanel">
                                                                                                            {include file=$elem.___property_->getRenderTemplate() field=$elem.___property_}
                                                                                                
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab2" role="tabpanel">
                                                                                                            {include file=$elem.___offers_->getRenderTemplate() field=$elem.___offers_}
                                                                                                                                                                    
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab3" role="tabpanel">
                                                                                                                                                                                                                                                                    
                                            <table class="otable">
                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__meta_title->getTitle()}&nbsp;&nbsp;{if $elem.__meta_title->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__meta_title->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__meta_title->getRenderTemplate() field=$elem.__meta_title}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__meta_keywords->getTitle()}&nbsp;&nbsp;{if $elem.__meta_keywords->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__meta_keywords->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__meta_keywords->getRenderTemplate() field=$elem.__meta_keywords}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__meta_description->getTitle()}&nbsp;&nbsp;{if $elem.__meta_description->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__meta_description->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__meta_description->getRenderTemplate() field=$elem.__meta_description}</td>
                                </tr>
                                
                                                            
                        </table>
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab4" role="tabpanel">
                                                                                                            {include file=$elem.___recomended_->getRenderTemplate() field=$elem.___recomended_}
                                                                                                
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab5" role="tabpanel">
                                                                                                            {include file=$elem.___concomitant_->getRenderTemplate() field=$elem.___concomitant_}
                                                                                                
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab6" role="tabpanel">
                                                                                                            {include file=$elem.___photo_->getRenderTemplate() field=$elem.___photo_}
                                                                                                
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab7" role="tabpanel">
                                                                                                                                                                                                                                                                                                                                                                                                            
                                            <table class="otable">
                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__consist->getTitle()}&nbsp;&nbsp;{if $elem.__consist->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__consist->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__consist->getRenderTemplate() field=$elem.__consist}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__nutritional_value->getTitle()}&nbsp;&nbsp;{if $elem.__nutritional_value->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__nutritional_value->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__nutritional_value->getRenderTemplate() field=$elem.__nutritional_value}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__energy_value->getTitle()}&nbsp;&nbsp;{if $elem.__energy_value->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__energy_value->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__energy_value->getRenderTemplate() field=$elem.__energy_value}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__shelf_life->getTitle()}&nbsp;&nbsp;{if $elem.__shelf_life->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__shelf_life->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__shelf_life->getRenderTemplate() field=$elem.__shelf_life}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__temp->getTitle()}&nbsp;&nbsp;{if $elem.__temp->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__temp->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__temp->getRenderTemplate() field=$elem.__temp}</td>
                                </tr>
                                
                                                            
                        </table>
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab8" role="tabpanel">
                                                                                                                            
                                            <table class="otable">
                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__cover->getTitle()}&nbsp;&nbsp;{if $elem.__cover->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__cover->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__cover->getRenderTemplate() field=$elem.__cover}</td>
                                </tr>
                                
                                                            
                        </table>
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab9" role="tabpanel">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                            <table class="otable">
                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__armored_milk->getTitle()}&nbsp;&nbsp;{if $elem.__armored_milk->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__armored_milk->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__armored_milk->getRenderTemplate() field=$elem.__armored_milk}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__walnut->getTitle()}&nbsp;&nbsp;{if $elem.__walnut->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__walnut->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__walnut->getRenderTemplate() field=$elem.__walnut}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__honey->getTitle()}&nbsp;&nbsp;{if $elem.__honey->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__honey->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__honey->getRenderTemplate() field=$elem.__honey}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__butter->getTitle()}&nbsp;&nbsp;{if $elem.__butter->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__butter->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__butter->getRenderTemplate() field=$elem.__butter}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__chocolate->getTitle()}&nbsp;&nbsp;{if $elem.__chocolate->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__chocolate->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__chocolate->getRenderTemplate() field=$elem.__chocolate}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__peanut->getTitle()}&nbsp;&nbsp;{if $elem.__peanut->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__peanut->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__peanut->getRenderTemplate() field=$elem.__peanut}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__poppy->getTitle()}&nbsp;&nbsp;{if $elem.__poppy->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__poppy->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__poppy->getRenderTemplate() field=$elem.__poppy}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__sour_cream->getTitle()}&nbsp;&nbsp;{if $elem.__sour_cream->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__sour_cream->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__sour_cream->getRenderTemplate() field=$elem.__sour_cream}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__cream->getTitle()}&nbsp;&nbsp;{if $elem.__cream->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__cream->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__cream->getRenderTemplate() field=$elem.__cream}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__curd->getTitle()}&nbsp;&nbsp;{if $elem.__curd->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__curd->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__curd->getRenderTemplate() field=$elem.__curd}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__cocoa->getTitle()}&nbsp;&nbsp;{if $elem.__cocoa->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__cocoa->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__cocoa->getRenderTemplate() field=$elem.__cocoa}</td>
                                </tr>
                                
                                                            
                        </table>
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab10" role="tabpanel">
                                                                                                                                                                                                
                                            <table class="otable">
                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__theme_color->getTitle()}&nbsp;&nbsp;{if $elem.__theme_color->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__theme_color->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__theme_color->getRenderTemplate() field=$elem.__theme_color}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__dark_ico->getTitle()}&nbsp;&nbsp;{if $elem.__dark_ico->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__dark_ico->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__dark_ico->getRenderTemplate() field=$elem.__dark_ico}</td>
                                </tr>
                                
                                                            
                        </table>
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab11" role="tabpanel">
                                                                                                                                                                                                                                                                    
                                            <table class="otable">
                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__one_weight->getTitle()}&nbsp;&nbsp;{if $elem.__one_weight->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__one_weight->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__one_weight->getRenderTemplate() field=$elem.__one_weight}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__count_in_box->getTitle()}&nbsp;&nbsp;{if $elem.__count_in_box->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__count_in_box->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__count_in_box->getRenderTemplate() field=$elem.__count_in_box}</td>
                                </tr>
                                
                                                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__count_in_pallet->getTitle()}&nbsp;&nbsp;{if $elem.__count_in_pallet->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__count_in_pallet->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__count_in_pallet->getRenderTemplate() field=$elem.__count_in_pallet}</td>
                                </tr>
                                
                                                            
                        </table>
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab12" role="tabpanel">
                                                                                                                            
                                            <table class="otable">
                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__market_sku->getTitle()}&nbsp;&nbsp;{if $elem.__market_sku->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__market_sku->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__market_sku->getRenderTemplate() field=$elem.__market_sku}</td>
                                </tr>
                                
                                                            
                        </table>
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab13" role="tabpanel">
                                                                                                            {include file=$elem.____files__->getRenderTemplate() field=$elem.____files__}
                                                                                                
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab14" role="tabpanel">
                                                                                                                            
                                            <table class="otable">
                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__tax_ids->getTitle()}&nbsp;&nbsp;{if $elem.__tax_ids->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__tax_ids->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__tax_ids->getRenderTemplate() field=$elem.__tax_ids}</td>
                                </tr>
                                
                                                            
                        </table>
                                                </div>
                        <div class="tab-pane" id="catalog-product-tab15" role="tabpanel">
                                                                                                                            
                                            <table class="otable">
                                                                                            
                                <tr>
                                    <td class="otitle">{$elem.__marked_class->getTitle()}&nbsp;&nbsp;{if $elem.__marked_class->getHint() != ''}<a class="help-icon" data-placement="right" title="{$elem.__marked_class->getHint()|escape}">?</a>{/if}
                                    </td>
                                    <td>{include file=$elem.__marked_class->getRenderTemplate() field=$elem.__marked_class}</td>
                                </tr>
                                
                                                            
                        </table>
                                                </div>
            
        </form>
    </div>
    </div>