import 'Team.dart';

class Game {
  Team team1;
  Team team2;
  int maxPoint;
  Team hisTurn;
  List<String> jokes = [];

  Game(this.team1, this.team2, this.maxPoint, this.hisTurn);


  Team getTeam1(){
    return team1;
  }

  Team getTeam2(){
    return team2;
  }

  int getMaxPoints(){
    return maxPoint;
  }




}