
//DB 생성
function createDBM(){
    menuDb = window.openDatabase("menuDB","1.0", "메뉴DB", 1024*1024);
  }
  
  //테이블 생성
  function createTableM(){
    menuDb.transaction(function(tx){
        tx.executeSql("create table Menu(name,price)");
    });
  }
  
  //데이터 추가
  function insertDataM(){
    menuDb.transaction(function(tx){
        tx.executeSql("insert into Menu values(?,?)",["아메리카노",4000]);  
        tx.executeSql("insert into Menu values(?,?)",["카푸치노",4200]);
        tx.executeSql("insert into Menu values(?,?)",["프라푸치노",4500]);               
        tx.executeSql("insert into Menu values(?,?)",["아이스티",4000]);
        tx.executeSql("insert into Menu values(?,?)",["녹차라떼",4500]);
        tx.executeSql("insert into Menu values(?,?)",["얼그레이",4200]);
        tx.executeSql("insert into Menu values(?,?)",["루이보스",3500]);
        tx.executeSql("insert into Menu values(?,?)",["스무디",3800]);
        tx.executeSql("insert into Menu values(?,?)",["사과주스",2500]);

    });
  }
  
  //데이터 출력
  function selectDataM(){
    menuDb.transaction(function(tx){
      tx.executeSql("select * from Basket",[],
        function(tx,result){            
          for(var i = 0; i < result.rows.length; i++){
            var row = result.rows.item(i);
            document.getElementById('table1').innerHTML += "</td><td>" + row['name'] + "</td></tr>" + row['price']  + "</td></tr>" + row['count'] + "</td></tr>";
          }            
        });
    });
  }


 
  