{addcss file="%shop%/returns.css"}
{addjs file="%shop%/returns.js"}
{$return_items=$return.return_items}
{$order=$return->getOrder()}
{$order_data=$return->getOrderData(false)}
<form class="returnsTable" method="POST" action="{urlmake}">
    <div class="page-responses form-style productsReturnTable">
        <div class="tabs gray ordersTabs">
            <ul class="tabList">
                <li class="act"><a href="#">{t}Заявление на возврат товара{/t}</a></li>
            </ul>
            <div class="tab act">
                <p class="returnsTable">
                    {t url={$router->getUrl('shop-front-myproductsreturn', ['Act' => 'rules'])} alias="Правила возврата товаров"}
                        С помощью данного раздела, вы сможете оформить заявку на возврат товара, а также распечатать бланк заявления на возврат товара. После оформления заявки с вами свяжется менеджер и расскажет о дальнейших действиях. Пожалуйста, ознакомьтесь с <a class="inDialog" href="%url">правилами возврата товаров</a> перед оформлением заявки.{/t}
                </p>
                <br/><br/>
                {csrf}
                {$this_controller->myBlockIdInput()}

                <input type="hidden" name="order" value="{$order.order_num}">
                {if isset($return)}<input type="hidden" name="edit" value="{$return.id}">{/if}
                {if !empty($return->getNonFormErrors())}
                <div class="pageError">
                    {foreach $return->getNonFormErrors() as $error}
                        <p>{$error}</p>
                    {/foreach}
                </div>
                {/if}
                <table class="table">
                    <thead>
                    <tr class="returnsHead">
                        <th>
                        </th>
                        <th>{t}Название{/t}</th>
                        <th class="mobileHide">{t}Артикул{/t}</th>
                        <th class="mobileHide">{t}Цена{/t}</th>
                        <th>{t}Кол-во{/t}</th>
                    </tr>
                    </thead>
                    <tbody>
                        {foreach $order_data.items as $item}
                            <tr>
                                <td>
                                    <input class="productsReturnCheckbox" type="checkbox" data-uniq="{$item.cartitem.uniq}" data-price="{$item.single_cost_with_discount}" name="return_items[{$item.cartitem.uniq}][uniq]" value="{$item.uniq}" {if isset($return_items[$item.cartitem.uniq])}checked{/if}/>
                                </td>
                                <td>
                                    {$item.cartitem.title}
                                    {if !empty($item.cartitem.model)}
                                    <p>{t}Комплектация{/t}<p>
                                        {$item.cartitem.model}
                                        {/if}
                                </td>
                                <td class="mobileHide">{$item.cartitem.barcode}</td>
                                <td class="mobileHide summ">{$item.single_cost_with_discount|format_price} {$return.currency_stitle}</td>
                                <td>
                                    <select id="amount{$item.cartitem.uniq}" class="productsReturnAmount" name="return_items[{$item.cartitem.uniq}][amount]" {if !isset($return_items[$item.cartitem.uniq])}disabled{/if}>
                                        {$step=$item.cartitem->getEntity()->getAmountStep()}
                                        {$range=range($step, $item.cartitem.amount, $step)}
                                        {foreach $range as $amount}
                                            <option {if $return_items[$item.cartitem.uniq].amount == $amount}selected{/if}>{$amount}</option>
                                        {/foreach}
                                    </select>
                                </td>
                            </tr>
                        {/foreach}
                        {foreach $order_data.other as $key => $item}
                            {if $item.cartitem.type == 'delivery'}
                                <tr>
                                    <td>
                                        <input class="productsReturnCheckbox" type="checkbox" data-uniq="{$item.cartitem.uniq}" data-price="{$item.total}" name="return_items[{$item.cartitem.uniq}][uniq]" value="{$item.cartitem.uniq}" {if isset($return_items[$item.cartitem.uniq])}checked{/if}/>
                                    </td>
                                    <td>
                                        {$item.cartitem.title}
                                    </td>
                                    <td></td>
                                    <td>{$item.total|format_price} {$return.currency_stitle}</td>
                                    <td>
                                        <input id="amount{$item.cartitem.uniq}" type="hidden" class="productsReturnAmount" name="return_items[{$item.cartitem.uniq}][amount]" value="1" {if !isset($return_items[$item.cartitem.uniq])}disabled{/if}>
                                    </td>
                                </tr>
                            {/if}
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="page-responses formStyle">
        <br/>
        <br/>
        <div class="tabs gray">
            <ul class="tabList">
                <li class="act"><a href="#">{t}Данные покупателя{/t}</a></li>
            </ul>

            <div class="tab act">
                <div class="half fleft">
                    <div class="formLine">
                        <label class="fielName">
                            {t}Имя{/t}
                        </label>
                        {$return->getPropertyView('name')}
                    </div>
                    <div class="formLine">
                        <label class="fielName">
                            {t}Фамилия{/t}
                        </label>
                        {$return->getPropertyView('surname')}
                    </div>
                    <div class="formLine">
                        <label class="fielName">
                            {t}Отчество{/t}
                        </label>
                        {$return->getPropertyView('midname')}
                    </div>
                    <div class="formLine">
                        <label class="fielName">
                            {t}Причина возврата{/t}
                        </label>
                        {$return->getPropertyView('return_reason')}
                    </div>
                    <div class="formLine">
                        <label class="fielName">
                            {t}Серия паспорта{/t}
                        </label>
                        {$return->getPropertyView('passport_series')}
                    </div>
                    <div class="formLine">
                        <label class="fielName">
                            {t}Номер паспорта{/t}
                        </label>
                        {$return->getPropertyView('passport_number')}
                    </div>
                    <div class="formLine">
                        <label class="fielName">
                            {t}Кем и когда выдан паспорт{/t}
                        </label>
                        {$return->getPropertyView('passport_issued_by')}
                    </div>
                    <div class="formLine">
                        <label class="fielName">
                            {t}Номер телефона{/t}
                        </label>
                        {$return->getPropertyView('phone')}
                    </div>
                </div>
                <div class="half fright">
                    <div class="formLine">
                        <label class="fielName">
                            {t}Наименование банка{/t}
                        </label>
                        {$return->getPropertyView('bank_name')}
                    </div>
                    <div class="formLine">
                        <label class="fielName">
                            {t}БИК{/t}
                        </label>
                        {$return->getPropertyView('bik')}
                    </div>
                    <div class="formLine">
                        <label class="fielName">
                            {t}Рассчетный счет{/t}
                        </label>
                        {$return->getPropertyView('bank_account')}
                    </div>
                    <div class="formLine">
                        <label class="fielName">
                            {t}Корреспондентский счет{/t}
                        </label>
                        {$return->getPropertyView('correspondent_account')}
                    </div>
                </div>
            </div>
        </div>
        <div class="half cleft">
            <div class="formLine buttonLine">
                {if isset($return.id)}
                    <input type="submit" value="{t}Сохранить{/t}">&nbsp;
                    <a onclick="return confirm('{t}Вы действительно хотите удалить заявку?{/t}')" class="formSave button color delete" href="{$router->getUrl('shop-front-myproductsreturn', ['Act' => 'delete', 'return_id' => $return.return_num])}">{t}Удалить заявку{/t}</a>
                {else}
                    <input type="submit" value="{t}Подать заявку{/t}">
                {/if}
            </div>
        </div>
    </div>
</form>