function explode( delimiter, string ) {
    var emptyArray = { 0: '' };
    if ( arguments.length != 2 || typeof arguments[0] == 'undefined' || typeof arguments[1] == 'undefined' ){       return null;    }
    if ( delimiter === '' || delimiter === false || delimiter === null ){        return false;    }
    if ( typeof delimiter == 'function' || typeof delimiter == 'object' || typeof string == 'function' || typeof string == 'object' ) {        return emptyArray;    }
    if ( delimiter === true ) {        delimiter = '1';    }
    return string.toString().split ( delimiter.toString() );
}

function init() {
    var myMap = new ymaps.Map("poligon", {
			center:	[55.01266926432748, 82.92344049853942],
            zoom: 11,
  		    controls: []
        }, {
//            searchControlProvider: 'yandex#search'

        });

    // ������� ������������� � ������� ���������������� ������.
    var myPolygon = new ymaps.Polygon(
        [[
            [54.93410833795803,82.93701160839268],
            [54.93074757042416,82.93666828563924],
            [54.92649678398898,82.92276371410652],
            [54.92985790827279,82.91675556591233],
            [54.93302106168151,82.87624348095143],
            [54.943200765316625,82.87658680370564],
            [54.947943820694235,82.87615765026311],
            [54.953624865828665,82.87727344921296],
            [54.95238992462702,82.89941776684017],
            [54.96142881258705,82.90113438060989],
            [54.971617216549205,82.89776835522945],
            [54.97127159236411,82.8911593922164],
            [54.97072846260457,82.86094698987274],
            [54.99437246134226,82.857342100956],
            [54.99511265298763,82.85888705334965],
            [54.99600086485889,82.87957224927155],
            [54.997135773512035,82.88369212231892],
            [54.99792525616682,82.88738284192307],
            [54.99836933330376,82.89150271496999],
            [54.99807328242753,82.89648089490214],
            [54.99772788696598,82.90120158276771],
            [54.99851735791872,82.90532145581565],
            [54.99994823425066,82.90806803784695],
            [54.99585283091826,82.9165652760055],
            [55.00858174492017,82.93536219678211],
            [55.012182600577525,82.9251483448523],
            [55.013760955474424,82.92411837659175],
            [55.01257719515141,82.92158637128146],
            [55.01379794741875,82.91978392682311],
            [55.01572148130037,82.91510615430059],
            [55.01866825408173,82.9081538685344],
            [55.02298321917143,82.89776835522945],
            [55.027347023627065,82.89236102185522],
            [55.031966257025424,82.88588965217781],
            [55.03398751077657,82.8880783347339],
            [55.03494880284441,82.89056742469984],
            [55.03785718648684,82.88734877388232],
            [55.03632907914748,82.88327181617971],
            [55.03731496155126,82.88224184791763],
            [55.039779560955814,82.88897955696315],
            [55.03926200771314,82.88747751991434],
            [55.04470830289963,82.88073981086941],
            [55.047178408270575,82.88030806114347],
            [55.04823794259074,82.88331213524003],
            [55.04991342776984,82.88133802940571],
            [55.050825059244325,82.88348379661703],
            [55.05355982859589,82.88043680717631],
            [55.0567132035957,82.89189520408782],
            [55.0659994290754,82.89374056388976],
            [55.065974800039726,82.89738836815026],
            [55.06804358596403,82.90077868034497],
            [55.07038315488936,82.90661516716136],
            [55.0736013682295,82.90325509741058],
            [55.07459478929272,82.90573785092631],
            [55.074869879242016,82.90878167214217],
            [55.071993050655,82.90985138752309],
            [55.07237164594712,82.91343093063881],
            [55.07569589426033,82.9190957560785],
            [55.07980772869745,82.92643427994288],
            [55.085666974745926,82.9371631160025],
            [55.08970393670137,82.93703436996931],
            [55.090023922273446,82.94218421127785],
            [55.09474956352831,82.95729041245042],
            [55.09973740852422,82.97359824326064],
            [55.09774409686098,82.98372626450073],
            [55.09597218045392,82.98282504227204],
            [55.09656282802139,82.97986388351949],
            [55.08787405335297,82.97575696347081],
            [55.086048501037986,82.97264274410277],
            [55.08304590093322,82.96864598133037],
            [55.08159338354357,82.97268002368897],
            [55.07723551340808,82.98379509784648],
            [55.07514258142434,82.98534005023936],
            [55.07184291235674,82.98259346820791],
            [55.066067912705506,82.96952659326239],
            [55.057346261742026,82.97967651556117],
            [55.05458711607047,82.98079231451122],
            [55.047343449977824,82.96611526678159],
            [55.04213136008582,82.96596407183605],
            [55.045877038637094,82.98630594500509],
            [55.04725693678558,82.99900888689963],
            [55.03542768877383,83.00330042132344],
            [55.02901871435337,82.98956751116722],
            [55.02073482232981,82.98716425188987],
            [55.0074178214778,82.96965479144056],
            [54.9967610221165,82.99626230486838],
            [54.98985231847794,82.99111246355979],
            [54.98817431014734,82.99591898211449],
            [54.98465852332403,82.99102263912961],
            [54.97226760318914,82.95832114681998],
            [54.96965070260452,82.95591788754268],
            [54.96636699074183,82.96063857540891],
            [54.95861339817565,82.95943694577024],
            [54.95451375780096,82.97377067074584],
            [54.94977148109927,82.96896415219112],
            [54.943447571164874,82.97960715756221],
            [54.938605152187144,82.97231154904173],
            [54.93771566461346,82.95136886105345],
            [54.93885222856137,82.9386659191589],
            [54.93410833795803,82.93701160839268],
        ]],
     {
       // hintContent: '���� ������������� ������!',
         balloonContent: '�������� 300 �.'
    }, {
        // �����.
        // ���� � ������������ �������.
        fillColor: '#0EFC89',
        // �������������� ������������ �������..
        // �������� ������������ ����� �� #33(0.2), � 0.1(0.2*0.5).
        fillOpacity: 0.5,
        // ���� �������.
        strokeColor: '#3F9D6E',
        // ������������ �������.
        strokeOpacity: 0.5,
        // ������ �����.
        strokeWidth: 2,
        // ������ ���������� �����.
        // ������ ����� ����������� ������ ���������������.
        borderRadius: 6
    });


    //  ������� ������������� � ������� ���������������� ������.
    var myPolygonOut = new ymaps.Polygon(

        [[

            [54.84306884274331,83.05634952253406],
            [54.84153407807578,83.03581935940885],
            [54.840023624994465,83.01431045765584],
            [54.84188161943492,83.0024145930127],
            [54.85149021194751,82.98104275158164],
            [54.84786249541523,82.97388661792985],
            [54.84728673552813,82.96816278389201],
            [54.84848467826445,82.96495754411919],
            [54.842550333005555,82.9493926852058],
            [54.839256191829406,82.9354237406561],
            [54.84408585539303,82.9326986162969],
            [54.86303976816581,82.94875968387807],
            [54.865524407200446,82.93311972311216],
            [54.873453801694744,82.93533254554944],
            [54.87534387869868,82.94303853204923],
            [54.87584809042809,82.98336018017011],
            [54.89418100688593,82.98215855053138],
            [54.90314648700607,82.9654215662784],
            [54.90189144048005,82.92443741253086],
            [54.91451739572074,82.92317140987582],
            [54.91450039894168,82.86056865146823],
            [54.8978663710481,82.84809101513093],
            [54.91343626358206,82.7978185184982],
            [54.932876378344794,82.80929837308183],
            [54.94361197666532,82.8248981007124],
            [54.97080252617654,82.7672198780562],
            [54.96717324929047,82.74147067151331],
            [54.96544490641759,82.69031558118057],
            [54.97685676005682,82.68945727429588],
            [54.97681356285991,82.66422305188394],
            [54.98146624994629,82.661476469853],
            [54.999454834395074,82.66902957043945],
            [54.99849268717271,82.6856378086596],
            [55.00798979235196,82.70636591992664],
            [55.02112167714921,82.71421942792192],
            [55.02951642111642,82.7316859730266],
            [55.05416038050272,82.75571856580022],
            [55.06834838983901,82.75400195203096],
            [55.10193563248594,82.75594198982434],
            [55.10134494886453,82.77996939632749],
            [55.08618392563652,82.80022025253756],
            [55.099376210329076,82.80502677109293],
            [55.10497834407678,82.8078913703208],
            [55.125932131231764,82.82219827320621],
            [55.13999216067705,82.83496022369906],
            [55.157729145431965,82.8482103362326],
            [55.14872649090869,82.89373278763335],
            [55.15292096127003,82.91909575607814],
            [55.185085289983576,82.92553305771374],
            [55.198572695421184,82.93481077262086],
            [55.200275202746575,82.977047471903],
            [55.19661073754022,82.99697619273294],
            [55.16096992148841,83.01301053037461],
            [55.15343093616846,83.01186927347642],
            [55.15532797328772,82.99836839743762],
            [55.121824595394756,83.0118183575805],
            [55.12873986584527,83.04294943954946],
            [55.11831223996677,83.05166125443023],
            [55.11208640209515,83.04869703630452],
            [55.107631065813294,83.05517419391127],
            [55.090305466914685,83.07316660174331],
            [55.07312118604665,83.05668710955578],
            [55.06873776150439,83.05479883440933],
            [55.06361494643057,83.05067896136241],
            [55.06174298432482,83.03411363848652],
            [55.041145596740584,83.03763269671407],
            [55.03956832468436,83.02647470721203],
            [55.02458112890747,83.03042291888201],
            [55.01256104559947,83.04689841732782],
            [55.010551038002156,83.07445006832882],
            [54.99472640210213,83.06904273495473],
            [55.000968199835796,83.09187369808949],
            [54.990753841176314,83.09805350765981],
            [54.991642149959965,83.12002616390983],
            [54.978895495404394,83.14067917332449],
            [54.97271813717107,83.1568421648482],
            [54.96160142552715,83.165452055786],
            [54.96770025963661,83.18684535488882],
            [54.971008549739366,83.20096450314315],
            [54.96814467272026,83.21512656674174],
            [54.9468072727124,83.2346959637144],
            [54.93961815561643,83.21115689739982],
            [54.92722563305669,83.20453720555102],
            [54.92570564791606,83.19568591580182],
            [54.92296211409536,83.18536477551257],
            [54.92872084670478,83.17487197384636],
            [54.92844899382551,83.1656022594909],
            [54.92282616834258,83.15959411129752],
            [54.914730385051655,83.16148238644404],
            [54.90102562582681,83.13332992062364],
            [54.891867963569446,83.13882308468614],
            [54.88245460123149,83.13813643917834],
            [54.877877003962645,83.12749343380726],
            [54.873608233227586,83.1180520580748],
            [54.86815096936067,83.1154771374206],
            [54.85768275987847,83.12417240956728],
            [54.84364563331617,83.12771784040547],
            [54.837756636622146,83.12210576018725],
            [54.832483204132096,83.11414987876947],
            [54.82443402477649,83.1020741243049],
            [54.82716534060976,83.08684900697733],
            [54.837693239843766,83.06844015786137],
            [54.84385977442994,83.0637642189017],
            [54.84306884274331,83.05634952253406],


        ]],

        {
            //��������
//        hintContent: '���� ������������� ������!',
            balloonContent: '�������� �� 600�.'
        }, {
            // �����.
            // ���� � ������������ �������.
//        fillColor: '#7df9ff33',
            fillColor: '#ff8a00',
            // �������������� ������������ �������..
            // �������� ������������ ����� �� #33(0.2), � 0.1(0.2*0.5).
            fillOpacity: 0.5,
            // ���� �������.
            strokeColor: '#0000FF',
            // ������������ �������.
            strokeOpacity: 0.7,
            // ������ �����.
            strokeWidth: 1,
            // ������ ���������� �����.
            // ������ ����� ����������� ������ ���������������.
            borderRadius: 12
        });


//��������� ������� �� ����� ����� �� ����� ������
    myMap.geoObjects.add(myPolygonOut);
    myMap.geoObjects.add(myPolygon);




    /*
	$('#sbmt').click(function(){
	    var city_id = $('#city_id').val();
		checkDeliveryPrice("������, �����������," + city_id);
	});*/

    myPolygon.events.add('click', function (e) {
        var coords = e.get('coords');
        console.log(coords); });
    $(document).on('keyup','input[name="house"]',function(){

        // �����;
        var street = $('input[name="street"]').val();
        // ��������;
        //var room = $('input[name="room"]').val();
        // ���;
        var house = $('input[name="house"]').val();
        var cite_date = street + ' ' + (house != '' ? house : '');
       // alert(cite_date);
        if(cite_date != '')
            checkDeliveryPrice("������, " + cite_date);
           //checkDeliveryPrice("������, �����������," + cite_date);
        return false
    });

	function checkDeliveryPrice(city_id)
	{
		$.ajax({     
            url: "https://geocode-maps.yandex.ru/1.x/?format=json&geocode="+city_id+"&results=3",
            type: "GET",
            data: {},
            dataType: "JSON",
            success: function(response){

				var arr = [];
				arr = explode(' ',response.response.GeoObjectCollection.featureMember[0].GeoObject.Point.pos);


				if(myPolygon.geometry.contains([arr[1],arr[0]])) {
                    ///alert(city_id+', ��������: 300�.');
                    return $('input.delivery').val('1006');
                } else if(myPolygonOut.geometry.contains([arr[1],arr[0]])) {
                  //  alert(city_id + ', ��������: 600�.');
                    return $('input.delivery').val('1007');
                }else{
                    return false;
                }
				console.log(response.response.GeoObjectCollection.featureMember[0].GeoObject.Point.pos);
				console.log(arr[1]+' '+arr[0]);
				console.log(myPolygon.geometry.contains([arr[1],arr[0]]));
		  }

		});
	}      

}


