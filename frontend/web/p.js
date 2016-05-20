function explode( delimiter, string ) {
    var emptyArray = { 0: '' };
    if ( arguments.length != 2 || typeof arguments[0] == 'undefined' || typeof arguments[1] == 'undefined' ){       return null;    }
    if ( delimiter === '' || delimiter === false || delimiter === null ){        return false;    }
    if ( typeof delimiter == 'function' || typeof delimiter == 'object' || typeof string == 'function' || typeof string == 'object' ) {        return emptyArray;    }
    if ( delimiter === true ) {        delimiter = '1';    }
    return string.toString().split ( delimiter.toString() );
}


ymaps.ready(init);

function init() {

    var myMap = new ymaps.Map("map", {
			center:	[55.03023958662654,83.01634839361031],
//            center: [55.73, 37.75],
            zoom: 10
        }, {
            searchControlProvider: 'yandex#search'
        });

  // Создаем прямоугольник с помощью вспомогательного класса.
    var myPolygon = new ymaps.Polygon(

//[
//    var myPolygon = new ymaps.Polygon([
/*
				[55.03,83.01],
				[54.95,83.08],
				[54.22,82.96],
				[55.78,82.90],      */

[[[55.03023958662654,83.01634839361031],[54.95760064304151,83.08226636236031],[54.93546691708922,82.96416333501574],[55.02235044615878,82.9037385303292],[55.03023958662654,83.01634839361031]]],
        // Задаем координаты диагональных углов прямоугольника.
//    ], 
	 {
        //Свойства
        hintContent: 'Меня перетаскивать нельзя!',
        balloonContent: 'Прямоугольник 1'
    }, {
        // Опции.
        // Цвет и прозрачность заливки.
        fillColor: '#7df9ff33',
        // Дополнительная прозрачность заливки..
        // Итоговая прозрачность будет не #33(0.2), а 0.1(0.2*0.5).
        fillOpacity: 0.5,
        // Цвет обводки.
        strokeColor: '#0000FF',
        // Прозрачность обводки.
        strokeOpacity: 0.5,
        // Ширина линии.
        strokeWidth: 2,
        // Радиус скругления углов.
        // Данная опция принимается только прямоугольником.
        borderRadius: 6
    });

    // Добавляем многоугольник на карту.
    var poly = myMap.geoObjects.add(myPolygon);
//	 myMap.overlay.add(myPolygon);

	poly.events.add('click', function (e) {
            var coords = e.get('coords');
		$.ajax({     
            url: "https://geocode-maps.yandex.ru/1.x/?format=json&geocode=Россия, Новосибирск, ул. Большевистская 175/6"+"&results=3?sco=longlat",
            type: "GET",
            data: {},
            dataType: "JSON",
            success: function(response){

				var arr = [];

				arr = explode(' ',response.response.GeoObjectCollection.featureMember[0].GeoObject.Point.pos);
				console.log('Coordinates: '+response.response.GeoObjectCollection.featureMember[0].GeoObject.Point.pos);
				console.log(myPolygon.geometry.contains(arr[1]+' '+arr[0])+' != '+coords[0].toPrecision(8)+' '+coords[1].toPrecision(8));
				console.log('Coordinates by mouse: '+coords);
			}
		
	});	

	});

    myMap.events.add('click', function (e) {
            var coords = e.get('coords');

		$.ajax({     
            url: "https://geocode-maps.yandex.ru/1.x/?format=json&geocode=Россия, Новосибирск, ул. Большевистская 175/6"+"&results=3?sco=longlat",
            type: "GET",
            data: {},
            dataType: "JSON",
            success: function(response){

				var arr = [];
				arr = explode(' ',response.response.GeoObjectCollection.featureMember[0].GeoObject.Point.pos);

				console.log('Coordinates: '+arr[1]+' '+arr[0]);
				console.log(myPolygon.geometry.getPixelGeometry().contains(arr[1]+' '+arr[0])+' '+arr[1]+' '+arr[0]+' != ');
				console.log('Coordinates by mouse: '+coords);
			}


			});

           
    });
}



