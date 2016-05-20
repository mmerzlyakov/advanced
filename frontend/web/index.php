<!DOCTYPE html>
<html>
<head>
    <title>Примеры. Многоугольник</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Если вы используете API локально, то в URL ресурса необходимо указывать протокол в стандартном виде (http://...)-->
	<script src="jquery.js"></script>
    <script src="http://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
    <script src="polygon.js" type="text/javascript"></script>
	<style>
        html, body, #map {
            width: 100%; height: 100%; padding: 0; margin: 0;
        }
    </style>
</head>
<body>

<form name="form">
<!-- input name="" id="city_id" type="text" value=""/ -->
<div class="wrapper_adress form-inline">
            <!-- div class="title_fild">Доставить:</div  -->
    <input type="text" name="team" class="address_point input-field form-control" id="s1">
    <input type="text" name="team" class="address_point input-field form-control" id="s1">
            <!--<span class="field code">+7</span>
            <input type="text"  value="" class="input-field  form-control tel" maxlength="10" placeholder="Телефон поставщика">-->
<input id="sbmt" name="sbmt" type="button" value="Проверить"/>
<input id="sbmtCheck" name="sbmt" type="button" value="Проверить много"/>
    <input id="sbmt300" name="sbmt" type="button" value="Координаты 300р."/>
    <input id="sbmt600" name="sbmt" type="button" value="Координаты 600р."/>
    <input id="sbmteastside" name="sbmt" type="button" value="Координаты EastSide"/>
    <input id="sbmtwestside" name="sbmt" type="button" value="Координаты WestSide"/>
<input id="starteditinline" type="button" value="Редактор 300р. Вкл/Выкл"/>
<input id="starteditoutline" type="button" value="Редактор 600р. Вкл/Выкл"/>
    <input id="starteditwestside" type="button" value="Редактор WestSide Вкл/Выкл"/>
    <input id="startediteastside" type="button" value="Редактор EastSide Вкл/Выкл"/>
    <input id="checkroutes" type="button" value="CheckRoute"/>


    <input type="hidden" name="team" class="address_point input-field form-control" id="e1">
    <input type="hidden" name="team" class="address_point input-field form-control" id="e2">
    <input type="hidden" name="team" class="address_point input-field form-control" id="e3">
    <input type="hidden" name="team" class="address_point input-field form-control" id="e4">


    <!-- input id="test" type="button" value="Test Button"/ -->

            <div class="maybeArdess"></div>
</div>

</form>

<div id="map"></div>


</body>
</html>
