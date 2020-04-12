var db;

//DB생성
createDB();
//테이블생성
createTable();

//메뉴 자동 등록
$.getJSON('menu.json', function(jsonData){
	var menuList = "";
	$.each(jsonData.menuInfo, function(){
		menuList += 
		"<li id=\"menu" + this.rowid + "\"><a onclick=\"insertData()\">" + 
		"<h3>" + this.menu + "</h3>" +
		"<p>" + this.price + "원" + "</p>" +
		"</a></li>";
	});	
	$('#menuList').empty();				
	$('#menuList').append(menuList);
	$('#menuList').listview('refresh');
});

//onClick 이벤트
function menuClick(){
	insertData();
  }

  var menuDb;
  //DB생성
createDBM();
//테이블생성
createTableM();
insertDataM();



  