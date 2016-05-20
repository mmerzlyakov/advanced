ymaps.ready(init);

function init () {
    var map = new ymaps.Map('map', {
        center: [55.76, 37.64],
        zoom: 13
    });
    
    var polygon = new ymaps.Polygon([], {}, { 
            fill: false,
            strokeColor: "FF0000AA",
            strokeWidth: 5,
            editorDrawingCursor: "crosshair",
            editorMaxPoints: 50,
            draggable: false
        }),
        geoObjects = [
            new ymaps.Placemark([55.647685, 37.196578]),
            new ymaps.Placemark([55.578996, 37.094667]),
            new ymaps.Placemark([55.484970, 37.737869]),
            new ymaps.Placemark([55.892466, 37.834056]),
            new ymaps.Placemark([55.045867, 37.967653])
        ],
        result = ymaps.geoQuery(geoObjects);
    
    result
        // Добавляем геообъекты на карту.
        .addToMap(map)
        // Указываем пресет.
        .setOptions('preset', 'twirl#redIcon')
        // Скрываем все элементы.
        .setOptions('visible', false)
        // Выставляем bounds так, чтобы все объекты вместились.
        .applyBoundsToMap(map);

    // Добавляем полигон на карту.
    map.geoObjects.add(polygon);
    
    polygon.editor.startDrawing();
    polygon.editor.events.add(['statechange','vertexadd'], function () {
        result
            // Скрываем все наши элементы.
            .setOptions('visible', false)
            // Ищем пересечения. Метод вернет новую выборку.
            .searchIntersect(polygon)
            // Убираем опцию visilbe у элементов выборки.
            .unsetOptions('visible') 
    });
}
