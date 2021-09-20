<header {if $smarty.server.REQUEST_URI == ''}class="hero" {else}class="static"{/if}>
    <nav class="container">
        <div class="logo-wrapper">
            <a href="/" class="logo">&nbsp;</a>
        </div>
        <ul>
            <li class="desktop">
                <a>Продукция</a>
                <ul>
                    <li><a class="tabs-href" href="/catalog/torty/">Торты</a></li>
                    <li><a class="tabs-href" href="/catalog.html#bubbles">Медовые шарики</a></li>
                    <li><a class="tabs-href" href="/catalog.html#slices">Медовые ломтики</a></li>
                    <li><a class="tabs-href" href="/catalog.html#pastries">Пирожные</a></li>
                </ul>
            </li>
            <li class="desktop"><a href="/about.html">О нас</a></li>
            <li class="desktop"><a href="/contacts.html">Контакты</a></li>
{*            <li>*}
{*                <a><i class="mdi mdi-account"></i></a>*}
{*                <ul>*}
{*                    <!-- Авторизованные пользователи -->*}
{*                    <li><a href="/profile.html">Профиль</a></li>*}
{*                    <li><a href="">Выход</a></li>*}
{*                    <!-- Гости -->*}
{*                    <li><a href="#login" class="modal-trigger">Авторизация</a></li>*}
{*                    <li><a>Регистрация</a></li>*}
{*                </ul>*}
{*            </li>*}
{*            <li>*}
{*                <a href="/checkout.html" class="cart">*}
{*                    <span class="cart-wrapper">*}
{*                        <span class="count">3</span>*}
{*                        <span class="separator">/</span>*}
{*                        <span class="total">1 200₽</span>*}
{*                    </span>*}
{*                    <i class="mdi mdi-cart-outline"></i>*}
{*                </a>*}
{*            </li>*}
            <li><a href="#mobile-menu" class="sidenav-trigger waves-effect"><i class="mdi mdi-menu"></i></a></li>
        </ul>
    </nav>
</header>
<ul class="sidenav" id="mobile-menu">
    <li class="user-view">
        <div class="lazy" data-src="{$THEME_IMG}/logo_white.svg"></div>
    </li>
    <li>
        <a class="root">Продукция</a>
        <ul>
            <li><a class="tabs-href" href="/catalog.html#cakes">Торты</a></li>
            <li><a class="tabs-href" href="/catalog.html#bubbles">Медовые шарики</a></li>
            <li><a class="tabs-href" href="/catalog.html#slices">Медовые ломтики</a></li>
            <li><a class="tabs-href" href="/catalog.html#pastries">Пирожные</a></li>
        </ul>
    </li>
    <li><a class="root" href="">О нас</a></li>
    <li><a class="root" href="">Контакты</a></li>
</ul>
<main>
    {block name="content"}
        {$app->blocks->getMainContent()}
    {/block}
</main>
<footer class="page-footer">
    <div class="container">
        <div class="row">
            <div class="col l2 m3 s12 xs12">
                <a href="/" class="logo lazy" data-src="/img/logo_grey.svg"></a>
            </div>
            <div class="col l2 m3 s6 xs6">
                <div class="footer-header">Навигация</div>
                <ul>
                    <li><a href="">Продукция</a></li>
                    <li><a href="">О нас</a></li>
                    <li><a href="">Контакты</a></li>
                </ul>
            </div>
            <div class="col l2 m3 s6 xs6">
                <div class="footer-header">Каталог</div>
                <ul>
                    <li><a href="">Торты</a></li>
                    <li><a href="">Медовые шарики</a></li>
                    <li><a href="">Медовые ломтики</a></li>
                    <li><a href="">Пирожные</a></li>
                </ul>
            </div>
            <div class="col l3 m3 s6 xs7">
                <div class="footer-header">Контакты</div>
                <ul>
                    <li><a href=""><i class="mdi mdi-map-marker"></i><span>с. Великовечное, ул. Мира, 87</span></a></li>
                    <li><a href=""><i class="mdi mdi-phone"></i><span>+7 861 553 9014</span></a></li>
                    <li><a href=""><i class="mdi mdi-phone transparent"></i><span>+7 989 285 8148</span></a></li>
                    <li><a href=""><i class="mdi mdi-email"></i><span>torti.esayan@mail.ru</span></a></li>
                </ul>
            </div>
            <div class="col l3 m12 s6 xs12 socials-wrapper">
                <div class="footer-header">Соц. сети</div>
                <div class="socials">
                    <a href="" class="social"><i class="mdi mdi-youtube"></i></a>
                    <a href="" class="social"><i class="mdi mdi-instagram"></i></a>
                    <a href="" class="social"><i class="mdi mdi-whatsapp"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            © Есаянъ, 2021
            <a href="https://2br.agency" class="right" target="_blank" rel="nofollow">Дизайн, разработка – 2Br</a>
        </div>
    </div>
</footer>
