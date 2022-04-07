// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tugas_class/main.dart';

//oop
//class
class Kartumonster {
  String? nama;
  int? atk;
  int? def;
  
  //construktor
  Kartumonster({this.nama, this.atk, this.def});
  //method
  type(String type){
    print(type.toString() + "Monster");
  }
}
class Kartutrap{
  String? nama;
  String? efek;
//construktor 2
Kartutrap({this.nama, this.efek});
  //method 2
  type(String type){
    print(type.toString() + "Trap");
  }
}
//inheritance
class Summon extends Kartumonster{
  String? tipeSummon;
  Summon({String? nama, this.tipeSummon}):super(nama : nama);
}
class Jenis extends Kartumonster{
  String? jenisMonster;
  Jenis({String?nama, this.jenisMonster}):super(nama:nama);
}

//inheritance 2
class Active extends Kartutrap{
  String? tipeActive;
  Active({String? nama, this.tipeActive}):super(nama:nama);
}
class Syarat extends Kartutrap{
  String? syaratActive;
  Syarat({String? nama, this.syaratActive}):super(nama:nama);
}

void main() {
  //instance
  var k1 = Kartumonster(nama: "Blue Eyes", atk:3000, def: 2000);
  k1.type("Normal");
  print(k1.nama);
  print(k1.atk);
  print(k1.def);
  
  var k1baru = Summon(tipeSummon: "Tribute Summon", nama: "Black Magician");
  print("-----");
  print(k1baru.tipeSummon);
  print(k1baru.nama);
 
  var k1ahkir = Jenis(jenisMonster: "Divine", nama: "Obelisk The Tormentor");
  print("-----");
  print(k1ahkir.jenisMonster);
  print(k1ahkir.nama);
  
  var k2 = Kartutrap(nama: "Ring of Destruction", efek: "Once per Turn");
  print("-----");
  k2.type("Normal");
  print(k2.nama);
  print(k2.efek);
  
  var k2baru = Active(tipeActive: "From Field",nama: "Mirror Force");
  print("----");
  print(k2baru.tipeActive);
  print(k2baru.nama);
  
  var k2ahkir = Syarat(syaratActive: "Must Have Dark Magician Girl on Field", nama:"Magic Cylinder");
  print("----");
  print(k2ahkir.syaratActive);
  print(k2ahkir.nama);
}

