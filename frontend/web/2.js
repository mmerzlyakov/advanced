window.yaPoints = [];

function struct_of_array(n)
{//�������� ������ �� ���� ������� ������� � ��������� ������� n
    var i=str_adr.length;
    var j=0;
    
    while(i>parseInt(n))
    {    
        j=i-1;
        if(i==str_adr.length)
            str_adr[i]=new Array();
            
        str_adr[i]['object']=str_adr[j]['object'];
        str_adr[i]['id']=str_adr[j]['id'];
        str_adr[i]['tel']=str_adr[j]['tel'];
        i=i-1;
    }
    
}
function set_array(indx, d)
{
    obj = yaPoints[indx];
    var i=str_adr.length;
    var j=0;
    var flag=false;
    var flag_s=false;
    if(i==0)//������� �������
    {
        str_adr[i]=new Array();
        str_adr[i]['object']=obj;
        str_adr[i]['id']=d;
    }
    else 
    {
        if(d==0)//������� � Index=0 ������ ������
        {
            if(str_adr[d]['id']!=d)
                struct_of_array(d);
                
            str_adr[d]['object']=obj;
            str_adr[d]['id']=d;
        }
        else
        {
            if(d==1)//������� � Index=1 ������ ���������
            {
                
                j=i-1;
                if(str_adr[j]['id']==d)//������� ����������
                {
                    str_adr[j]['object']=obj;
                }
                else
                {
                    str_adr[i]=new Array();
                    str_adr[i]['object']=obj;
                    str_adr[i]['id']=d;
                }
            }
            else
            {
                for(var m = 0; m < i; m++) 
                {
                    if(str_adr[m]['id']==d)//�������������� ������ ����� �������� --�� ���� ��� �� �����
                    {
                        str_adr[m]['object']=obj;
                        str_adr[m]['id']=d;
                        flag=true;
                        break;//������� �� ����� for
                    }
                }
                if(flag==false)//������� ����� ������� ������� � �������������� � ���� �������� ��������� �����
                {
                    j=i-1;
                    if(str_adr[j]['id']==1)
                    {
                        if(d>=2)
                        {
                            var t=0;
                            max_id=0;
                            max_pos=0;
                            while(t<i)
                            {
                                if(str_adr[t]['id']>max_id)
                                {
                                    max_id=str_adr[t]['id'];
                                    max_pos=t;
                                }
                                t++;
                            }
                            if(d>max_id)//��������� ������� ������������ � �������   ��� ���
                            {//���������� ���������
                                if(i<3)
                                {
                                    struct_of_array(max_pos);
                                    str_adr[max_pos]['object']=obj;
                                    str_adr[max_pos]['id']=d;
                                }
                                else
                                {
                                    struct_of_array(max_pos);
                                    str_adr[max_pos+1]['object']=obj;
                                    str_adr[max_pos+1]['id']=d;
                                }
                            }
                            else if(d==max_id)
                            {//�������������� �������
                                str_adr[max_pos]['object']=obj;
                                str_adr[max_pos]['id']=d;
                            }
                            else if(d<max_id)
                            {//�������� �� 
                                struct_of_array(max_pos);
                                str_adr[max_pos]['object']=obj;
                                str_adr[max_pos]['id']=d;
                            }
                            else
                            {
                                struct_of_array(j);
                                str_adr[j]['object']=obj;
                                str_adr[j]['id']=d;
                            }
                            
                        }
                    }
                    else
                    {
                        str_adr[i]=new Array();
                        str_adr[i]['object']=obj;
                        str_adr[i]['id']=d;
                    }
                }
            }
        }
              
        
        
        
    }         
    $('#t'+d).removeAttr('disabled');
}

function getPointByName(name,place,id){
	if(!name)
		return false;
	yaPoints = [];
	
	var returnArray = [];
	var addressObj = {};

	if(name != ''){
        $.ajax({
            url: "https://geocode-maps.yandex.ru/1.x/?format=json&geocode=������, �����������,  "+name+"&results=3",
            type: "GET",
            data: {},
            dataType: "JSON",
            success: function(response){
                if(response.response.GeoObjectCollection.featureMember.length > 0){
                    $(place).html('');
                    yaPoints = [];
                    for (var i = 0; i <= response.response.GeoObjectCollection.featureMember.length; i++) {
                        
                        if(isset(response.response.GeoObjectCollection.featureMember[i])){
		                    
		                    if(isset(response.response.GeoObjectCollection.featureMember[i].GeoObject)){
		                        
		                        if(isset(response.response.GeoObjectCollection.featureMember[i].GeoObject.metaDataProperty)){
			                        
			                        if(isset(response.response.GeoObjectCollection.featureMember[i].GeoObject.metaDataProperty.GeocoderMetaData)){
				                        
				                        if( isset(response.response.GeoObjectCollection.featureMember[i].GeoObject.metaDataProperty.GeocoderMetaData.kind) ){

				                        	if((response.response.GeoObjectCollection.featureMember[i].GeoObject.metaDataProperty.GeocoderMetaData.kind == 'street' || response.response.GeoObjectCollection.featureMember[i].GeoObject.metaDataProperty.GeocoderMetaData.kind == 'house') && response.response.GeoObjectCollection.featureMember[i].GeoObject.name != '50�-2138'){
												//���� ���������� ��� ������ ��� ������� �����
												var addressObj = {};
												var geoObject = response.response.GeoObjectCollection.featureMember[i].GeoObject.metaDataProperty;
												
				                        		var addressDetail = geoObject.GeocoderMetaData.AddressDetails.Country;

												addressObj = {
													'country': addressDetail.CountryName,
													'AdministrativeAreaName': addressDetail.AdministrativeArea.AdministrativeAreaName,
													'position': response.response.GeoObjectCollection.featureMember[i].GeoObject.Point.pos,
													'city': '',
													'street': '', 
													'house': '',
													'cityDistrict':''
												}
												
												
												if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea)){
													//��������� ����� � �����, ���� ��� ����	
													if( isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality) )
                                                    {
														if( isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.LocalityName) ){
															addressObj.city = addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.LocalityName;
														}
                                                        if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality))
                                                        {
                                                            if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.DependentLocality))
                                                            {
                                                                  addressObj.street = addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.DependentLocality.Thoroughfare.ThoroughfareName;
                                                            }
                                                            else if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.Thoroughfare.ThoroughfareName))
                                                            {
                                                                addressObj.street = addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.Thoroughfare.ThoroughfareName;
                                                            }
                                                        }
                                                        
                                                        else if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.Thoroughfare.ThoroughfareName))
                                                        {
                                                            addressObj.street = addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.Thoroughfare.ThoroughfareName;
                                                        }
                                                          
                                                        
                                                        
                                                        /*if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.Thoroughfare.ThoroughfareName))
                                                        {
                                                            addressObj.street = addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.Thoroughfare.ThoroughfareName;
                                                        }
                                                        
														if( isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.Thoroughfare.ThoroughfareName) )
                                                        {
															addressObj.street = addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.Thoroughfare.ThoroughfareName;
														} */   
                                                        
													}

													//��������� ���, ���� �� ����
													if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.Thoroughfare))
                                                    {
														if( isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.Thoroughfare.Premise) )
                                                        {
															if( isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.Thoroughfare.Premise.PremiseNumber) )
                                                            {
																addressObj.house = addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.Thoroughfare.Premise.PremiseNumber;
															}
														}	
													}
                                                    else if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality))
                                                    {
                                                        if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.DependentLocality))
                                                        {
                                                            if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.DependentLocality.Thoroughfare))
                                                            {
                                                                if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.DependentLocality.Thoroughfare.Premise))
                                                                    if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.DependentLocality.Thoroughfare.Premise.PremiseNumber))
                                                                        addressObj.house = addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.DependentLocality.Thoroughfare.Premise.PremiseNumber;
                                                            }
                                                        }
                                                        else if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.Thoroughfare.Premise))
                                                        {
                                                            if(isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.Thoroughfare.Premise.PremiseNumber))
                                                                addressObj.house = addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.Thoroughfare.Premise.PremiseNumber;
                                                        }
                                                    }
													
													//��������� ����� ������
													if(addressObj.house != '')
														addressObj.cityDistrict = getCityDistrict(addressObj.position.replace(/ /g,","));

													/*if( isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.Thoroughfare) ){
														if( isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.Thoroughfare.Premise) ){
															if( isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.Thoroughfare.Premise.PremiseNumber) ){
																if( !isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality) ){
																	if( !isset(addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.DependentLocalityName) ){
																		
																	}
																	else{
																		addressObj.cityDistrict = addressDetail.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.DependentLocalityName;	
																	}
																}
																
															}
														}
													}*/
												}
					                            
					                            //����������� �����
					                            var adressPoint = addressObj.street;
					                            //���� ���� ��� ��, ��������� ���
					                            if(addressObj.house != '')
					                            	adressPoint = adressPoint+', '+addressObj.house;
					                            //���� ����� ���������� �� ������ ����� ��, ��������� � ������ ��� � �����
					                            if(addressObj.city != userCity)
					                            	adressPoint = addressObj.city+', '+adressPoint;
					                            yaPoints.push(addressObj);
					                            var indx = yaPoints.length-1;
					                            $(place).append("<span class=''><a href='#' class='adr_str' onclick=\" $(this).closest('.wrapper_adress').find('input.address_point').val('"+adressPoint+"'); $('.maybeArdess').empty(); set_array('"+indx+"', '"+id+"') \">"+adressPoint+"</a></span></br>");
					                             console.log(addressObj.position);
					                        }
				                        }
				                    }
				                }
				            }
				        }                
                    }
                }    
            }
        });
    }

}

function _getCityDistrict(position){
	if(!position)
		return false;
	
	return $.ajax({
        url: "https://geocode-maps.yandex.ru/1.x/?format=json&geocode="+position,
        type: "GET",
        data: {},
        dataType: "JSON",
        async:false,
        success: function(response){
                
        }
    });
}

function getCityDistrict(position){
	if(!position)
		return false;

	var result = _getCityDistrict(position);
	console.log(result);
	if(!result.responseText)
		return false;
	var response = $.parseJSON(result.responseText);

	
	if(response.response.GeoObjectCollection.featureMember.length > 0){
		for (var i=0; i < response.response.GeoObjectCollection.featureMember.length; i++) { 
			if(response.response.GeoObjectCollection.featureMember[i].GeoObject.metaDataProperty.GeocoderMetaData.AddressDetails.Country.AdministrativeArea.SubAdministrativeArea != undefined ){
				if(response.response.GeoObjectCollection.featureMember[i].GeoObject.metaDataProperty.GeocoderMetaData.AddressDetails.Country.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality != undefined){	
					if( response.response.GeoObjectCollection.featureMember[i].GeoObject.metaDataProperty.GeocoderMetaData.AddressDetails.Country.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.DependentLocalityName != undefined ){
						return response.response.GeoObjectCollection.featureMember[i].GeoObject.metaDataProperty.GeocoderMetaData.AddressDetails.Country.AdministrativeArea.SubAdministrativeArea.Locality.DependentLocality.DependentLocalityName;
					}
				}
			}		
		}
    }
}

