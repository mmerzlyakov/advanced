ymaps.ready(function () {
    var myMap = new ymaps.Map('map', {
            center: [55.751574, 37.573856],
            zoom: 9,
            // ����� �������� ������ 'default' � 'largeMapDefaultSet'
            // �������� ���������� � ������� ��������� ����������� �������
            // ��� ���� ����������, �������� � �������� ��������.
//            controls: ['smallMapDefaultSet']
            controls: ['default']
        }, {
            searchControlProvider: 'yandex#search'
        });
    });