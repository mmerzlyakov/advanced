ymaps.ready(init);

function init () {
    // �������� ���������� �����.
    var myMap = new ymaps.Map('map', {
            center: [61.766513, 34.344165],
            zoom: 12
        }, {
            searchControlProvider: 'yandex#search'
        });

    // �������� YMapsML-�����.
    ymaps.geoXml.load('http://demo.extremeshop.ru/xml/data.xml')
        .then(function (res) {
		console.table(res);
            // ���������� ����������� �� �����.
            myMap.geoObjects.add(res.geoObjects);
           // ���������� � ������ ��������� �������� YMapsML-�����.
        }, function (error){
            alert('������: ' + error);
        });
}