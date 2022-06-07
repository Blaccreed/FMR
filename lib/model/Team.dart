


import 'package:flutter/material.dart';

class Team{

  String name;
  bool win;
  int score;

  Team(this.name, this.score, this.win){
    score = 0;
    win = false;
  }

  void isWinning() {
    win = true;
  }

  void addPoint(int point) {
    score = score + point;
  }

}