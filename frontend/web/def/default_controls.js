ymaps.ready(function () {
    var myMap = new ymaps.Map('map', {
            center: [55.751574, 37.573856],
            zoom: 9,
            // “акже доступны наборы 'default' и 'largeMapDefaultSet'
            // Ёлементы управлени€ в наборах подобраны оптимальным образом
            // дл€ карт маленького, среднего и крупного размеров.
//            controls: ['smallMapDefaultSet']
            controls: ['default']
        }, {
            searchControlProvider: 'yandex#search'
        });
    });