/*ymaps.ready(init);

function init () {
    // Создание экземпляра карты.
    var myMap = new ymaps.Map('map', {
			center:	[55.030239, 83.016348],
//   center: [61.766513, 34.344165],
            zoom: 10
        }, {
            searchControlProvider: 'yandex#search'
        });

    // Загрузка YMapsML-файла.
   var myPolygon;

	  ymaps.geoXml.load('http://demo.extremeshop.ru/xml/inline.xml')
        .then(function (res) {

		console.table(res);
            // Добавление геообъектов на карту.

             myMap.geoObjects.add(res.geoObjects);
            myPolygon = myMap.geoObjects
           // Вызывается в случае неудачной загрузки YMapsML-файла.
        }, function (error){
            console.log(error);
        });

	myPolygon.editor.startEditing();
}

*/

//Стартуем карты
ymaps.ready(init);
/*
*
*  Запускаем карты и инциализируем нужные нам переменные и
*  функции прямо внутри инита by predator_pc
*
*/
function init() {


function chain(callback) {
    var queue = [];
 
    function _next() {
        var cb = queue.shift();
        if (cb) {
            cb(_next);
        }
    }
 
    setTimeout(_next, 0);
 
    var then = function(cb) {
        queue.push(cb);
        return { then: then }
    }
 
    return then(callback);
}

chain(function(next) {
    console.log('1');
    setTimeout(function() {
        console.log('2');
        next();
    }, 1000);
}).then(function(next) {
    console.log('3');
    setTimeout(function() {
        console.log('4');
        next();
    }, 1000);
}).then(function(next) {
    console.log('5');
    next();
});

}