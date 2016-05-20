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
            zoom: 10,
  		    controls: []
        }, {
//            searchControlProvider: 'yandex#search'
        });

  // Создаем прямоугольник с помощью вспомогательного класса.
    var myPolygon = new ymaps.Polygon(
        // Задаем координаты диагональных углов прямоугольника.
		[[[54.93410833795803,82.93701160839268],[54.93074757042416,82.93666828563924],[54.92649678398898,82.92276371410652],[54.92985790827279,82.91675556591233],[54.93302106168151,82.87624348095143],[54.943200765316625,82.87658680370564],[54.947943820694235,82.87615765026311],[54.953624865828665,82.87727344921296],[54.95238992462702,82.89941776684017],[54.96142881258705,82.90113438060989],[54.971617216549205,82.89776835522945],[54.97127159236411,82.8911593922164],[54.97072846260457,82.86094698987274],[54.99437246134226,82.857342100956],[54.99511265298763,82.85888705334965],[54.99600086485889,82.87957224927155],[54.997135773512035,82.88369212231892],[54.99792525616682,82.88738284192307],[54.99836933330376,82.89150271496999],[54.99807328242753,82.89648089490214],[54.99772788696598,82.90120158276771],[54.99851735791872,82.90532145581565],[54.99994823425066,82.90806803784695],[54.99585283091826,82.9165652760055],[55.00858174492017,82.93536219678211],[55.012182600577525,82.9251483448523],[55.013760955474424,82.92411837659175],[55.01257719515141,82.92158637128146],[55.01379794741875,82.91978392682311],[55.01572148130037,82.91510615430059],[55.01866825408173,82.9081538685344],[55.02298321917143,82.89776835522945],[55.027347023627065,82.89236102185522],[55.031966257025424,82.88588965217781],[55.03398751077657,82.8880783347339],[55.03494880284441,82.89056742469984],[55.03785718648684,82.88734877388232],[55.03632907914748,82.88327181617971],[55.03731496155126,82.88224184791763],[55.039779560955814,82.88897955696315],[55.03926200771314,82.88747751991434],[55.04470830289963,82.88073981086941],[55.047178408270575,82.88030806114347],[55.04823794259074,82.88331213524003],[55.04991342776984,82.88133802940571],[55.050825059244325,82.88348379661703],[55.05355982859589,82.88043680717631],[55.0567132035957,82.89189520408782],[55.0659994290754,82.89374056388976],[55.065974800039726,82.89738836815026],[55.06804358596403,82.90077868034497],[55.07161445178093,82.90979090263502],[55.07237164594712,82.91343093063881],[55.07569589426033,82.9190957560785],[55.07980772869745,82.92643427994288],[55.085666974745926,82.9371631160025],[55.08970393670137,82.93703436996931],[55.090023922273446,82.94218421127785],[55.09474956352831,82.95729041245042],[55.09973740852422,82.97359824326064],[55.09774409686098,82.98372626450073],[55.09597218045392,82.98282504227204],[55.09656282802139,82.97986388351949],[55.08787405335297,82.97575696347081],[55.086048501037986,82.97264274410277],[55.08304590093322,82.96864598133037],[55.08159338354357,82.97268002368897],[55.07723551340808,82.98379509784648],[55.07514258142434,82.98534005023936],[55.07184291235674,82.98259346820791],[55.066067912705506,82.96952659326239],[55.057346261742026,82.97967651556117],[55.05458711607047,82.98079231451122],[55.047343449977824,82.96611526678159],[55.04213136008582,82.96596407183605],[55.045877038637094,82.98630594500509],[55.04725693678558,82.99900888689963],[55.03542768877383,83.00330042132344],[55.02901871435337,82.98956751116722],[55.02073482232981,82.98716425188987],[55.0074178214778,82.96965479144056],[54.9967610221165,82.99626230486838],[54.98985231847794,82.99111246355979],[54.98817431014734,82.99591898211449],[54.98465852332403,82.99102263912961],[54.97226760318914,82.95832114681998],[54.96965070260452,82.95591788754268],[54.96636699074183,82.96063857540891],[54.95861339817565,82.95943694577024],[54.95451375780096,82.97377067074584],[54.94977148109927,82.96896415219112],[54.943447571164874,82.97960715756221],[54.938605152187144,82.97231154904173],[54.93771566461346,82.95136886105345],[54.93885222856137,82.9386659191589],[54.93410833795803,82.93701160839268]]],
		//test polygon
		//[[[55.03023958662654,83.01634839361031],[54.95760064304151,83.08226636236031],[54.93546691708922,82.96416333501574],[55.02235044615878,82.9037385303292],[55.03023958662654,83.01634839361031]]],

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

    poly = myMap.geoObjects.add(myPolygon);

	$('#sbmt').click(function(){
	    var city_id = $('#city_id').val();
		$.ajax({     
            url: "https://geocode-maps.yandex.ru/1.x/?format=json&geocode=Россия, Новосибирск,"+city_id+"&results=3",
            type: "GET",
            data: {},
            dataType: "JSON",
            success: function(response){

				var arr = [];
				arr = explode(' ',response.response.GeoObjectCollection.featureMember[0].GeoObject.Point.pos);

				if(myPolygon.geometry.contains([arr[1],arr[0]]))
					alert(city_id+', Доставка: 300р.');
				else
					alert(city_id+', Доставка: 600р.');

				console.log(response.response.GeoObjectCollection.featureMember[0].GeoObject.Point.pos);
				console.log(arr[1]+' '+arr[0]);
				console.log(myPolygon.geometry.contains([arr[1],arr[0]]));
		  }

		});

	});

	myMap.events.add('click', function (e) {
            var coords = e.get('coords');
		//		console.log(response.response.GeoObjectCollection.featureMember[0].GeoObject.Point.pos);
//				console.log(myPolygon.geometry.getPixelGeometry().contains(coords));
				console.log(myPolygon.geometry.contains(coords));

		ymaps.geocode(coords).then(function (res) {
        	    var firstGeoObject = res.geoObjects.get(0);
				console.log(firstGeoObject.properties.get('name'));
				console.log(firstGeoObject.properties.get('text'));
		});

/*		ymaps.geocode(coords).then(function (res) {
        	    var firstGeoObject = res.geoObjects.get(0);
				console.log(firstGeoObject.properties.get('name'));
				console.log(firstGeoObject.properties.get('text'));
		});

*/
            myMap.balloon.open(coords, {
						                contentHeader:'Событие!',
						                contentBody:'<p>Кто-то щелкнул по карте.</p>' +
					                    '<p>Координаты щелчка: ' + myPolygon.geometry.contains(coords) + [
					                    coords[0].toPrecision(6),
					                    coords[1].toPrecision(6)
					                    ].join(', ') + '</p>',
						                contentFooter:'<sup>Щелкните еще раз</sup>'

	            });	
			
		}
//	}
);	



    // Обработка события, возникающего при щелчке
    // левой кнопкой мыши в любой точке карты.
    // При возникновении такого события откроем балун.
    myMap.events.add('click', function (e) {
            myMap.balloon.close();
        if (!myMap.balloon.isOpen()) 
		{
            var coords = e.get('coords');

		$.ajax({     
            url: "https://geocode-maps.yandex.ru/1.x/?format=json&geocode=Россия, Новосибирск, большевистская 175/6"+"&results=3",
//            url: "https://geocode-maps.yandex.ru/1.x/?format=json&geocode=Россия, Новосибирск, одоевского 2/2"+"&results=3",
//            url: "https://geocode-maps.yandex.ru/1.x/?format=json&geocode=Россия, Новосибирск, большевистская 175/6"+"&results=3",
//            url: "https://geocode-maps.yandex.ru/1.x/?format=json&geocode=Россия, Москва, Каширский проезд 3"+"&results=3",
            type: "GET",
            data: {},
            dataType: "JSON",
            success: function(response){

				var arr = [];
				arr = explode(' ',response.response.GeoObjectCollection.featureMember[0].GeoObject.Point.pos);

				console.log(response.response.GeoObjectCollection.featureMember[0].GeoObject.Point.pos);
				console.log(arr[1]+' '+arr[0]+' '+coords);


				console.log(myPolygon.geometry.contains([arr[1],arr[0]]));

		ymaps.geocode(arr[1]+' '+arr[0]).then(function (res) {
        	    var firstGeoObject = res.geoObjects.get(0);
				console.log(firstGeoObject.properties.get('name'));
				console.log(firstGeoObject.properties.get('text'));
		});     

	/*		if(myPolygon.geometry.getPixelGeometry().contains(coords)){
				return console.log('Yes');
			}
			else{
				return console.log('No');				
			} */


			}


			});

            
        }
        else {
            myMap.balloon.close();
        }
    });
}



