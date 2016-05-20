
function isset() {
	 var a = arguments,	 l = a.length,	 i = 0,	 undef;

	 if (l === 0) {
		 throw new Error('Empty isset');
	 }
		 while (i !== l) {
				 if (a[i] === undef || a[i] === null) {
				   return false;
		 } i++;
	 }  
	return true;
}


function init (){
    var myMap = new ymaps.Map("map", {
			center:	[55.03023958662654,83.01634839361031],
            zoom: 10,
  		    controls: ['default']
        }, {
//            searchControlProvider: 'yandex#search'
        });

}

//Город пользователя по умолчанию
var userCity = 'Новосибирск';

var myMap, route, ch =1;
var markers = [];
var point = [];    
var str_adr=[];

ymaps.ready(init);



//Работа с интерфейсом пользователя
$(document).ready(function(){
    //загруззка контента
    $(document).on('keyup','.address_point',function(){
        //Подготавливаем локальные переменные для выбора адреса
        var maybeArdessPlace =  $(this).closest('.wrapper_adress').find('.maybeArdess');//$(this).next();
        var address = $(this).val();
        var id = $(this).attr('id').substring(1);
        
        //Очищаем поле
        $(maybeArdessPlace).html('');
        
        if(address != ''){
            getPointByName(address, maybeArdessPlace, id);
        }
    });
   

    

 });