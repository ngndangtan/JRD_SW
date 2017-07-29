.pragma library
.import QtQuick.LocalStorage 2.0 as Sql

var visibleStar1_Pr1 = false;
var visibleStar2_Pr1 = false;
var visibleStar3_Pr1 = false;
var visibleStar1_Pr2 = false;
var visibleStar2_Pr2 = false;
var visibleStar3_Pr2 = false;
var visibleStar1_Pr3 = false;
var visibleStar2_Pr3 = false;
var visibleStar3_Pr3 = false;

var txtResult_Pr1=""
var txtResult_Pr2=""
var txtResult_Pr3=""

var status_Pr1=false
var status_Pr2=false
var status_Pr3=false


//----------database_function-----------//
//--date_create  :is string
//--type         :is string  date,score_1,score_2,score_3,status_1,status_2,status_3
//--score        :is int

function creat_new_data(date_create) {
    var db = Sql.LocalStorage.openDatabaseSync("JRD_SW", "1.0", "The QML SQL!", 1000000);
    db.transaction(
        function(tx) {
            // Create the database if it doesn't already exist
            tx.executeSql('CREATE TABLE IF NOT EXISTS Data_table(date TEXT, score_1 TEXT,score_2 TEXT,score_3 TEXT,status_1 TEXT,status_2 TEXT,status_3 TEXT)');
            var result = tx.executeSql('SELECT * FROM Data_table WHERE date=(?)',[(date_create)]);
             if(result.rows.length === 0) {
                 // Add (another) greeting row
                 //tx.executeSql('INSERT INTO Data_table VALUES(?,?,?,?,?,?,?)', [date_str,'2','3','4','5','6','7']);
                tx.executeSql('INSERT INTO Data_table (date) VALUES(?)', [(date_create)]);
             }


        }
    )
}
function read_all_database()        {
    var r="";
    var db = Sql.LocalStorage.openDatabaseSync("JRD_SW", "1.0", "The QML SQL!", 1000000);
    db.transaction(
        function(tx) {
            // Show all added greetings
            var rs = tx.executeSql('SELECT * FROM Data_table');
            for (var i = 0; i < rs.rows.length; i++) {
                r += i+"\t"+rs.rows.item(i).date + "\t" + rs.rows.item(i).score_1 + "\t"+rs.rows.item(i).score_2 + "\t"+rs.rows.item(i).score_3 + "\t"+rs.rows.item(i).status_1+ "\t" +rs.rows.item(i).status_2+ "\t" +rs.rows.item(i).status_3 + "\n";
            }

        }
    )
    return r;
}
function deleted_data_all_date(date_create){
    //var value_index = date_create.toLocaleString()
    var db = Sql.LocalStorage.openDatabaseSync("JRD_SW", "1.0", "The QML SQL!", 1000000);
    db.transaction(
        function(tx) {
            tx.executeSql('DELETE FROM Data_table WHERE date=(?)',[(date_create)]);

        }
    )
}
function deteted_data_of(date_create,type){

    var db = Sql.LocalStorage.openDatabaseSync("JRD_SW", "1.0", "The QML SQL!", 1000000);
    db.transaction(
        function(tx) {
            var result = tx.executeSql('SELECT * FROM Data_table WHERE date=(?)',[(date_create)]);
            if(result.rows.length === 0) {
                print("type_error");
               return "date_error";
            }
            else
            {
                if(type==="score_1"){
                tx.executeSql('UPDATE Data_table SET score_1=? WHERE date=?',["",date_create]);
                }
                else if(type==="score_2"){
                    tx.executeSql('UPDATE Data_table SET score_2=? WHERE date=?',["",date_create]);
                }
                else if(type==="score_3"){
                    tx.executeSql('UPDATE Data_table SET score_3=? WHERE date=?',["",date_create]);
                }
                else if(type==="status_1"){
                    tx.executeSql('UPDATE Data_table SET score_3=? WHERE date=?',["",date_create]);
                }
                else if(type==="status_2"){
                    tx.executeSql('UPDATE Data_table SET score_3=? WHERE date=?',["",date_create]);
                }
                else if(type==="status_3"){
                    tx.executeSql('UPDATE Data_table SET score_3=? WHERE date=?',["",date_create]);
                }
                else
                {
                    print("type_error");
                    return "type_error";
                }

            }
        }
    )
}
function update_data_of(date_create,type,value){

    var db = Sql.LocalStorage.openDatabaseSync("JRD_SW", "1.0", "The QML SQL!", 1000000);
    db.transaction(
        function(tx) {
            var result = tx.executeSql('SELECT * FROM Data_table WHERE date=(?)',[(date_create)]);
            if(result.rows.length === 0) {
                print("type_error");
               return "date_error";
            }
            else
            {
                if(type==="score_1"){
                tx.executeSql('UPDATE Data_table SET score_1=? WHERE date=?',[value.toString(),date_create]);
                }
                else if(type==="score_2"){
                    tx.executeSql('UPDATE Data_table SET score_2=? WHERE date=?',[value.toString(),date_create]);
                }
                else if(type==="score_3"){
                    tx.executeSql('UPDATE Data_table SET score_3=? WHERE date=?',[value.toString(),date_create]);
                }
                else if(type==="status_1"){
                    tx.executeSql('UPDATE Data_table SET score_3=? WHERE date=?',[value.toString(),date_create]);
                }
                else if(type==="status_2"){
                    tx.executeSql('UPDATE Data_table SET score_3=? WHERE date=?',[value.toString(),date_create]);
                }
                else if(type==="status_3"){
                    tx.executeSql('UPDATE Data_table SET score_3=? WHERE date=?',[value.toString(),date_create]);
                }
                else
                {
                    print("type_error");
                    return "type_error";
                }

            }
        }
    )
}
function get_data_of(date_create,type){

    var db = Sql.LocalStorage.openDatabaseSync("JRD_SW", "1.0", "The QML SQL!", 1000000);
    db.transaction(
        function(tx) {
            var result = tx.executeSql('SELECT * FROM Data_table WHERE date=(?)',[(date_create)]);

            if(result.rows.length === 0) {
                print("type_error");
               return "date_error";
            }
            else
            {

                if(type==="date"){
                    print(result.rows.item(0).date);
                    return result.rows.item(0).date;
                }
                else if(type==="score_1"){

                    print(result.rows.item(0).score_1);
                    return Integer.valueOf(result.rows.item(0).score_1);
                }
                else if(type==="score_2"){
                    print(result.rows.item(0).score_2);
                    return Integer.valueOf(result.rows.item(0).score_2);
                }
                else if(type==="score_3"){
                    print(result.rows.item(0).score_3);
                    return Integer.valueOf(result.rows.item(0).score_3);
                }
                else if(type==="status_1"){
                    print(result.rows.item(0).status_1);
                    return result.rows.item(0).status_1;
                }
                else if(type==="status_2"){
                    print(result.rows.item(0).status_2);
                    return result.rows.item(0).status_2;
                }
                else if(type==="status_3"){
                    print(result.rows.item(0).status_3);
                    return result.rows.item(0).status_3;
                }
                else
                {
                    print("type_error");
                    return "type_error";
                }

            }
        }
    )
}


/* SCORE CALCULATION */

function validateText(type_game,scoreValue){
    var maxscoreValue = 67*100;
    if((scoreValue <= maxscoreValue) & (scoreValue >= (maxscoreValue*2/3)))
    {
        console.log("scoreValue is ", scoreValue, "maxscoreValue is", maxscoreValue);
        if(type_game===1){
            txtResult_Pr1 = "EXCELLENCE JOB! TOP SCORE";
            visibleStar1_Pr1 = true;
            visibleStar2_Pr1 = true;
            visibleStar3_Pr1 = true;
        }
        else if(type_game===2){
            txtResult_Pr2 = "EXCELLENCE JOB! TOP SCORE";
            visibleStar1_Pr2 = true;
            visibleStar2_Pr2 = true;
            visibleStar3_Pr2 = true;
        }
        else if(type_game===3){
            txtResult_Pr3 = "EXCELLENCE JOB! TOP SCORE";
            visibleStar1_Pr3 = true;
            visibleStar2_Pr3 = true;
            visibleStar3_Pr3 = true;
        }



    }
    else if((scoreValue < (maxscoreValue*2/3)) & (scoreValue >= (maxscoreValue*1/3)))
    {
        console.log("scoreValue is ", scoreValue, "maxscoreValue is", maxscoreValue);
        if(type_game===1){
            txtResult_Pr1 = "GREAT JOB! HIGH SCORE";
            visibleStar1_Pr1 = true;
            visibleStar2_Pr1 = true;
            visibleStar3_Pr1 = false;
        }
        else if(type_game===2){
            txtResult_Pr2 = "GREAT JOB! HIGH SCORE";
            visibleStar1_Pr2 = true;
            visibleStar2_Pr2 = true;
            visibleStar3_Pr2 = false;
        }
        else if(type_game===3){
            txtResult_Pr3 = "GREAT JOB! HIGH SCORE";
            visibleStar1_Pr3 = true;
            visibleStar2_Pr3 = true;
            visibleStar3_Pr3 = false;
        }
        else{}

    }
    else
    {
        console.log("scoreValue is ", scoreValue, "maxscoreValue is", maxscoreValue);

        if(type_game===1){
            txtResult_Pr1 = "GOOD JOB";
            visibleStar1_Pr1 = true;
            visibleStar2_Pr1 = false;
            visibleStar3_Pr1 = false;
        }

        else if(type_game===2){
            txtResult_Pr2 = "GOOD JOB";
            visibleStar1_Pr2 = true;
            visibleStar2_Pr2 = false;
            visibleStar3_Pr2 = false;
        }
        else if(type_game===3){
            txtResult_Pr3 = "GOOD JOB";
            visibleStar1_Pr3 = true;
            visibleStar2_Pr3 = false;
            visibleStar3_Pr3 = false;
        }
        else{}
    }
    console.log(visibleStar1_Pr1,visibleStar2_Pr1,visibleStar3_Pr1);


}

function calculateScore(type_game,scoreValue)
{
    scoreValue = scoreValue*100;
    validateText(type_game,scoreValue);
    return scoreValue;
}
