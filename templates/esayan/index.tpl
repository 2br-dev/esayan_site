{extends file="%THEME%/wrapper.tpl"}
{block name="content"}
    <div class="global-wrapper" id="main">
        <section id="hero" class="hero center-align lazy" data-src="{$THEME_IMG}/hero_blurry.jpg">
            <div class="hero-content">
                <h1>
                    <strong>Кондитерский дом</strong>
                    <span>семьи Есаян</span>
                </h1>
                <p>Оптовые поставки кондитерских изделий</p>
                <a href="" class="btn btn-white">Скачать каталог</a>
            </div>
        </section>
        <section id="catalog">
            {moduleinsert name="\Catalog\Controller\Block\Category" indexTemplate="%catalog%/blocks/category/category_main.tpl"}
        </section>
        <section id="popular">
            <div class="container">
                <div class="row">
                    <div class="col l12 center-align">
                        <h2>Популярные товары</h2>
                    </div>
                    <div class="col s10 offset-s1">
                        <div class="swiper-container" id="populars-swiper">
                            <div class="swiper-wrapper">
                                {moduleinsert name="\Catalog\Controller\Block\TopProducts" dirs="1"}
                            </div>
                        </div>
                        <div class="row extra-navi">
                            <div class="col s6">
                                <div id="populars-navi"></div>
                            </div>
                            <div class="col s6 right-align">
                                <a href="/catalog/torty/" class="btn">Перейти в каталог</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="how-it-works">
            <div class="container">
                <div class="row">
                    <div class="col s12 center-align">
                        <h2>Как это работает</h2>
                    </div>
                </div>
                <div class="row hiw-row">
                    <div class="col l2 offset-l2 m3 s6 xs12">
                        <div class="icon-wrapper">
                            <div class="icon lazy" data-src="{$THEME_IMG}/cart.png"></div>
                        </div>
                        <strong>1. Вы оформляете заказ через сайт или по телефону</strong>
                    </div>
                    <div class="col l2 m3 s6 xs12">
                        <div class="icon-wrapper">
                            <div class="icon lazy" data-src="{$THEME_IMG}/manager.png"></div>
                        </div>
                        <strong>2. Мы связываемся с вами для уточнения деталей</strong>
                    </div>
                    <div class="col l2 m3 s6 xs12">
                        <div class="icon-wrapper">
                            <div class="icon lazy" data-src="{$THEME_IMG}/payment.png"></div>
                        </div>
                        <strong>3. Вы оплачиваете выставленный счет</strong>
                    </div>
                    <div class="col l2 m3 s6 xs12">
                        <div class="icon-wrapper">
                            <div class="icon lazy" data-src="{$THEME_IMG}/transport.png"></div>
                        </div>
                        <strong>4. Мы доставляем выбранную вами продукцию</strong>
                    </div>
                </div>
            </div>
        </section>
        <section id="about">
            <div class="row flex no-margin">
                <div class="col m6 s12 no-padding">
                    <div class="lazy family" data-src="{$THEME_IMG}/family.png"></div>
                </div>
                <div class="col m6 s12 no-padding">
                    <div class="about-block-wrapper">
                        <div class="about-block center-align">
                            <h2>О компании</h2>
                            <p>
                                Кондитерский дом «Есаянъ» начал свою работу в&nbsp;2005 году, когда Есаян Геворг Бархударович вместе со своей супругой Сусаной Мелисовной основали
                                цех по производству медовых тортов и&nbsp;пирожных по семейным рецептам. Тогда в&nbsp;компании трудилось 4&nbsp;человека. Сейчас же на современном заводе
                                площадью 4500 м² работают 85 кондитеров.
                            </p>
                            <p>
                                Компания постоянно развивается. Благодаря современным технологиям, удалось создать металлизированную упаковку, позволяющую хранить
                                торты до 6&nbsp;месяцев. Неизменным остаются лишь рецепты и&nbsp;натуральные ингредиенты, используемые в&nbsp;производстве.
                            </p>
                            <div class="socials">
                                <a href=""><i class="mdi mdi-youtube"></i></a>
                                <a href=""><i class="mdi mdi-instagram"></i></a>
                                <a href=""><i class="mdi mdi-whatsapp"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="geography">
            <div class="container">
                <div class="row flex">
                    <div class="col xl4 l6 m12 s12">
                        <div class="geography-text center-align">
                            <h2>География компании</h2>
                            <p>Мы реализуем нашу продукцию по всей России. Наши десерты представлены в Москве, Санкт-Петербурге, Краснодарском крае, республике Адыгея, Ростовской области, Ставропольском крае, Воронеже, Владикавказе, Нальчике, Самаре, Тольятти, Саратове, Хабаровске и Владивостоке. </p>
                            <p>За пределами России наша продукция реализуется в Китае, Израиле и Турции.</p>
{*                            <a href="" class="btn">Найти дилера</a>*}
                        </div>
                    </div>
                    <div class="col xl8 l6 m12 s12"><div class="map lazy" data-src="{$THEME_IMG}/map.jpg"></div></div>
                </div>
            </div>
        </section>
        <section id="coop">
            <div class="container">
                <div class="row flex">
                    <div class="col l5 offset-l7 m8 offset-m2 s12 center-align no-padding">
                        <div class="coop-block">
                            <div class="coop-block-content">
                                <h2>Сотрудничество</h2>
                                <p>
                                    Компания Есаян открыта для новых предложений и&nbsp;заинтересована в&nbsp;плодотворном сотрудничестве
                                    с&nbsp;ритейлерами и&nbsp;дистрибьюторами, работающими по всей России. Для того, чтобы обсудить условия
                                    сотрудничества, цены и&nbsp;поставки, пожалуйста, свяжитесь с&nbsp;нашим менеджером по поставкам.
                                </p>
                                <a href="" class="btn btn-white">Стать дилером</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
{/block}
