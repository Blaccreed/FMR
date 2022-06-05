


import 'package:flutter/material.dart';

class Team{

  String name;
  bool win;
  int score;

  Team(this.name, this.score, this.win){
    score = 0;
    win = false;
  }


  String getNom() {
    return name;
  }

  bool getWin() {
    return win;
  }

  int getScore() {
    return score;
  }

  void isWinning() {
    win = true;
  }

  void addPoint(int point) {
    this.score = score + point;
  }

}