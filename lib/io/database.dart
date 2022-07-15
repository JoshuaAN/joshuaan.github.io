import 'package:testproject/io/database_team.dart';

import '../constants.dart';

class Database {
  List<DatabaseTeam> teams = [];

  Database() {
    for (var team in testTeams) {
      teams.add(DatabaseTeam(team[0], team[1]));
    }
  }

  List<DatabaseTeam> lookup(String key) {
    List<DatabaseTeam> lookup = [];
    for (var team in teams) {
      if (team.teamNumber.toString().startsWith(key)) lookup.add(team);
    }
    return lookup;
  }
}