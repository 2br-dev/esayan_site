var PopularSlider, Sidenav, coords, materialbox, imageSrc, tabs;

$(() => {
    init();
    $('body').on('click', '.tabs-href', selectProductTab)
    $(window).on('scroll', updateFixedItems);
    $(window).on('resize', updateMap);
    $('body').on('click', '.history>tbody>tr', expandDetails);
	$('body').on('change', '.toggle-group', toggleGroup);
    $('body').on('change', '[name="addr"]', updateAddressField);
	$('body').on('change', '[name="del"]', updateAddressList);
});

//= Инициализация ====================================================
function init(){
    $('p').hyphenate();
    
    Sidenav = M.Sidenav.init(document.querySelector('.sidenav'), {

    });

    PopularSlider = new Swiper('.swiper-container', swiperOptions('#populars-navi'))
    PopularSlider.on('slideChange', () => {
        $('.lazy').lazy();
    })
    $('.lazy').lazy();

    if($('#map').length){
        loadScript("https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.4.3/build/ol.js", () => {
            initMap();
        })
    }

    materialbox = M.Materialbox.init(document.querySelectorAll('.materialboxed'), {
        onOpenStart: e => {
            imageSrc = $(e).css('background-image');
        },
        onCloseEnd: e => {
            $(e).css({
                backgroundImage: imageSrc
            })
        }
    });

    tabs = M.Tabs.init(document.querySelectorAll('.tabs'), {
        duration: 200
    });

    $('.modal').modal();
}

//= Обработчики событий ==============================================
function selectProductTab(e){

    var locationBase = window.location.href.split(/[?#]/)[0];
    var hrefBase = this.href.split(/[?#]/)[0];

    if(locationBase === hrefBase){
        e.preventDefault();
        var anchor = this.href.split('#').pop();
        
        if($('#catalog-tabs').length){

            tabs[0].select(anchor);

            Sidenav.close();
        }
    }
}

function updateFixedItems(){

    // Navbar
    if($('html, body').scrollTop() >= 60){
        $('header.hero').addClass('static');
    }else{
        $('header.hero').removeClass('static');
    }
}

function updateMap(){

    if(!$('#map').length){
        return;
    }

    var desktopCoords = [
        coords[0]+.003,
        coords[1]
    ]

    var tabletCoords = [
        coords[0]+.002,
        coords[1]
    ];

    var mobileCoords = [
        coords[0],
        coords[1]
    ];

    var newCenter;
    var desktop = 1600;
    var tablet = 1200;

    switch(true){
        case($(window).width() <= tablet): newCenter = mobileCoords; break;
        case($(window).width() <= desktop): newCenter = tabletCoords; break;
        case($(window).width() >= desktop): newCenter = desktopCoords; break;
    }

    map.getView().setCenter(ol.proj.fromLonLat(newCenter));

    
}

function toggleGroup(e){
	var group = $(this).data('target');
	$('[data-group="'+group+'"]').toggleClass('visible');
}

function expandDetails(e){

	var path = e.originalEvent.path;
	var links = $(path).filter((index, el) => {
		return el.tagName == 'A'
	});

	if(!links.length){

		e.preventDefault();
		var already = $(this).next().find('.subtable-wrapper').css('display') == 'block';
		
        $('.subtable-wrapper').slideUp('fast');
        $(this).parents('table').find('tr').removeClass('active');

		if(!already){
			$(this).next().find('.subtable-wrapper').slideDown('fast');
            $(this).addClass('active');
		}
	}

}

function updateAddressList(e){
	if($(this).hasClass('need-address')){
		$('.address-list').removeClass('hidden');
	}else{
		$('.address-list').addClass('hidden');
	}
}

function updateAddressField(e){
	if($(this).val() == 'user-address'){
		$('#user-address').removeClass('hidden');
	}else{
		$('#user-address').addClass('hidden');
	}
}

//= Общие функции ========================
function swiperOptions(naviElement, breakpoints){

    if(!breakpoints){
        breakpoints = {
            320: {
                slidesPerView: 1
            },
            400: {
                slidesPerView: 2
            },
            800: {
                slidesPerView: 3
            },
            1300: {
                slidesPerView: 4
            }
        }
    }

    return {
        breakpoints: breakpoints,
        spaceBetween: 20,
        loop: true,
        pagination: {
            el: naviElement,
            type: 'bullets',
            clickable: true
        }
    }
}

//= Асинхронная загрузка скриптов =========================================
loadScript = (url, callback) => {

	var script = document.createElement("script")
	script.type = "text/javascript";

	if (script.readyState){  //IE
		script.onreadystatechange = function(){
			if (script.readyState == "loaded" ||
					script.readyState == "complete"){
				script.onreadystatechange = null;
				callback();
			}
		};
	} else {  //Others
		script.onload = function(){
			callback();
		};
	}

	script.src = url;
	document.getElementsByTagName("head")[0].appendChild(script);
}

//= Инициализация карты ===================================================
function initMap(){

    // 44.9426043,39.7313056
    coords = [39.733, 44.9427];
    
    var style = new ol.style.Style({
        image: new ol.style.Icon({
            anchor: [.5, 1],
            src: '/img/map_marker.png'
        })
    });
    
    var marker = new ol.Feature({
        type: 'icon',
        geometry: new ol.geom.Point(ol.proj.fromLonLat(coords))
    })

    var vectorSource = new ol.source.Vector({
        features: [marker]
    })

    var vectorLayer = new ol.layer.Vector({
		source: vectorSource,
        style: style
	});

    // Shift map center to provide place for overlay
    var center = [
        coords[0] + .003, 
        coords[1]
    ]

    map = new ol.Map({
        target: 'map',  // The DOM element that will contains the map
        interactions: ol.interaction.defaults({mouseWheelZoom:false}), //Disable scroll event
		renderer: 'canvas', // Force the renderer to be used
		layers: [
			// Add a new Tile layer getting tiles from OpenStreetMap source
			new ol.layer.Tile({
				source: new ol.source.OSM({
					url: "https://basemaps.cartocdn.com/rastertiles/light_all/{z}/{x}/{y}{r}.png"
				})
			}),
			vectorLayer
		],
		// Create a view centered on the specified location and zoom level

		view: new ol.View({
			center: ol.proj.fromLonLat(center),
			zoom: 17
		})
    });  
    
    // Эвент по клику на маркере
    map.on('click', function(evt) {
        var f = map.forEachFeatureAtPixel(
            evt.pixel,
            function(ft, layer){return ft;}
        );
        if (f && f.get('type') == 'icon') {
            var linkEl = $('<a href="https://goo.gl/maps/YiESv2D1wjP1yekM6" target="_blank">Google</a>');
            $('#map').append(linkEl);
            linkEl[0].click();
            $(linkEl).remove();
        }        
    });

    map.on("pointermove", function (evt) {
        var hit = this.forEachFeatureAtPixel(evt.pixel, function(feature, layer) {
            return true;
        }); 
        if (hit) {
            this.getTargetElement().style.cursor = 'pointer';
        } else {
            this.getTargetElement().style.cursor = '';
        }
    });
}