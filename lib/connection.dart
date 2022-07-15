

import 'package:mongo_dart/mongo_dart.dart';

void main(List<String> args) async {

  // this is the data base test code

  var teams = <int>[]; // just a "definitely not an array array"
  
  // database
  final db = await Db.create("mongodb+srv://test:this-is-a-test@helixscouting.g6mavym.mongodb.net/2022iri?retryWrites=true&w=majority");

  // print("create thing"); // attempt at a debug print in flutter

  await db.open(); // this caused the error pretty sure

  // print("opened"); // another attempt at a debug print in flutter

  // final botdata = db.collection("botdata");

  final matchdata = db.collection("matchdata");
    
  await matchdata.drop();
  
  await matchdata.insert(
      {
        "team" : 2363, // team identifier
        "alliance" : "red", // alliance identifier
        "match" : "qm0", // match identifier
        "on-field" : true, // robot on field
        "auto-zone" : true, // leave TARMAC during auto, get from TBA?
        "auto-up" : 5, // number of auto balls in upper hub
        "auto-low" : 0, // number of auto balls in lower hub
        "auto-miss" : 0, // number of auto balls missed
        "tele-up" : 54, // number of tele-op balls in upper hub
        "tele-low" : 0,// number of tele-op balls in lower hub
        "tele-miss" : 0, // number of tele-op balls missed
        "defense" : false, // did the robot play defense?
        "defense-lookout" : false, // should we mark this match as one to watch for good defensive performance
        "climb-attempt" : true, // climb is attempted
        "climb-level" : 2, // ending climb level get from TBA?
        "fault" : false, // fault during match
        "fault-description" : "" // optional description for a fault (not always obvious what it is)
      }
  );


  // print(botdat);

  // print(botdata);
  //
  matchdata.find().forEach(
          (element) {
            print(element["team"] + " scored " + element["tele-up"] + " balls in the high goal during teleop");
          }
  );

  // botdata.find().forEach((element) {
  //   print(element["team"]);
  // });

  // for (var element: botdata.find().toString()) {
  //   print(element);
  // }
}