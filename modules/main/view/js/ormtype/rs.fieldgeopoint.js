class FieldGeoPoint {
    constructor(element) {
        this.selector = {
            inputLatitude: '.rs-input-latitude',
            inputLongitude: '.rs-input-longitude',
            map: '.rs-field-geo-point-map',
        };
        this.class = {
        };
        this.options = {
        };

        this.owner = element;

        YandexMap.init(this.selector.map, (map) => {
            let inputLatitude = this.owner.querySelector(this.selector.inputLatitude);
            let inputLongitude = this.owner.querySelector(this.selector.inputLongitude);

            this.map = map;
            this.point = this.map.addPoint(inputLatitude.value, inputLongitude.value, {}, {
                'draggable': true
            });

            this.map.setCenter(inputLatitude.value, inputLongitude.value);

            this.map.map.events.add('click', (event) => {
                let coords = event.get('coords');
                inputLatitude.value = coords[0];
                inputLongitude.value = coords[1];
                this.point.geometry.setCoordinates(coords);
            });
            this.point.events.add('drag', (event) => {
                let coords = this.point.geometry.getCoordinates();
                inputLatitude.value = coords[0];
                inputLongitude.value = coords[1];
            });
        });

        if (this.owner.dataset.FieldGeoPointOptions) {
            this.options = Object.assign(this.options, JSON.parse(this.owner.dataset.FieldGeoPointOptions));
        }

        this.owner.addEventListener('', (event) => {
        });
    }

    /**
     * Отправляет запрос на изменение заказа и обновляет блоки
     */
    method() {
        let data = new FormData();
        data.append('key', 'value');

        fetch(url, {
            method: 'post',
            headers: {'X-Requested-With': 'XMLHttpRequest'},
            body: data,
        }).then((response) => {
            return response.json();
        }).then((response) => {
            if (response.success) {
                console.log(response);
            }
        });
    }

    static init(selector)
    {
        document.querySelectorAll(selector).forEach((element) => {
            if (!element.fieldGeoPoint) {
                element.fieldGeoPoint = new FieldGeoPoint(element);
            }
        });
    }

    static initListeners() {
        let elementSelector = '.rs-field-geo-point';

        document.addEventListener('DOMContentLoaded', () => {
            FieldGeoPoint.init(elementSelector);
        });

        // todo кусочек jQuery в нативном классе
        if ($.contentReady) {
            $.contentReady(() => {
                FieldGeoPoint.init(elementSelector);
            });
        } else {
            $(document).on('new-content', () => {
                FieldGeoPoint.init(elementSelector);
            });
        }

        FieldGeoPoint.init(elementSelector);
    }
}

if (!document.querySelector('script[src="' + global.folder +'/modules/main/view/js/yandexmap/rs.yandexmap.js"]')) {
    let script = document.createElement('script');
    script.src = global.folder + '/modules/main/view/js/yandexmap/rs.yandexmap.js';
    document.body.appendChild(script);
    script.onload = () => {
        FieldGeoPoint.initListeners();
    };
} else {
    FieldGeoPoint.initListeners();
}