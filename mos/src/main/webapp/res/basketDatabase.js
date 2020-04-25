//장바구니 SQLite
var db;

//DB 생성
function createDB(){
	db = window.openDatabase("basketDB","1.0", "장바구니DB", 1024*1024);
}

//테이블 생성
function createTable(){
	db.transaction(function(tx){
		tx.executeSql("create table Basket(menuId,name,price,count)");
	});
}

//데이터 추가
function insertData(){
	db.transaction(function(tx){
		tx.executeSql("insert into Basket values(?,?,?,?)",[1,1,1,1]);
	});
}
//데이터 추가(매개변수)
function insertData(menuId, menuName, menuPrice, count){
	db.transaction(function(tx){
		if(count > 0){
			tx.executeSql("update Basket set count = ? where menuId = ?",[count+1, menuId]);
		}
		else
		{
			tx.executeSql("insert into Basket values(?,?,?,?)",[menuId,menuName,menuPrice,1]);
		}
	});
}

//데이터 출력
function selectData(){
	db.transaction(function(tx){
		tx.executeSql("select * from Basket",[],
				function(tx,result){            
			for(var i = 0; i < result.rows.length; i++){
				var row = result.rows.item(i);
				document.getElementById('basketList').innerHTML += 
					"<li data-icon=\"minus\"><a onclick=\"deleteMenu(" +   (i+1)  + ")\">" 
					+ row['name'] + "<span class=\"ui-li-count\">" + row['count'] + "</span></a></li>";
			}            
		});
	});
}

function idReset(){
	
	db.transaction(function(tx){
		tx.executeSql("ALTER TABLE Basket AUTO_INCREMENT=1; SET @COUNT = 0; UPDATE Bakset SET rowid = @COUNT:=@COUNT+1");
	});
}
