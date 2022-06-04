


import 'package:flutter/material.dart';

class Team{

  String name;
  Image avatar;
  bool win;
  int score;

  Team(this.name, this.avatar, this.score, this.win){
    score = 0;
    win = false;
  }


  String getNom() {
    return name;
  }

  Image getAvatar() {
    return avatar;
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