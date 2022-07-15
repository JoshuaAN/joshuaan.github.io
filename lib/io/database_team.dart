import 'package:testproject/io/database_team_match.dart';

class DatabaseTeam {
  var teamNumber;
  var teamName;
  var matches;
  var wheels;
  var intake;
  var intakeShooterRelation;
  var observations;

  DatabaseTeam(int teamNumber, String teamName) {
    this.teamNumber = teamNumber;
    this.teamName = teamName;
  }
}