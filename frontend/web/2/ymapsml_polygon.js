ymaps.ready(init);

function init () {
    // Создание экземпляра карты.
    var myMap = new ymaps.Map('map', {
            center: [61.766513, 34.344165],
            zoom: 12
        }, {
            searchControlProvider: 'yandex#search'
        });

    // Загрузка YMapsML-файла.
    ymaps.geoXml.load('http://demo.extremeshop.ru/xml/data.xml')
        .then(function (res) {
		console.table(res);
            // Добавление геообъектов на карту.
            myMap.geoObjects.add(res.geoObjects);
           // Вызывается в случае неудачной загрузки YMapsML-файла.
        }, function (error){
            alert('Ошибка: ' + error);
        });
}