//DB 생성
function createDB(){
  db = window.openDatabase("basketDB","1.0", "장바구니DB", 1024*1024);
}

//테이블 생성
function createTable(){
  db.transaction(function(tx){
    tx.executeSql("create table Basket(name,price,count)");
  });
}

//데이터 추가
function insertData(){
 db.transaction(function(tx){
   tx.executeSql("insert into Basket values(?,?,?)",[menu1.value,menu1,1]);
  });
}

//데이터 출력
function selectData(){
  db.transaction(function(tx){
    tx.executeSql("select * from Basket",[],
      function(tx,result){            
        for(var i = 0; i < result.rows.length; i++){
          var row = result.rows.item(i);
          document.getElementById('table1').innerHTML += "</td><td>" + row['name'] + "</td></tr>" + row['price']  + "</td></tr>" + row['count'] + "</td></tr>";
        }            
      });
  });
}