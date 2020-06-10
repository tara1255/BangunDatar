import 'dart:io';

import 'package:hitung_tanah/bangun_datar.dart';
import 'extension.dart';

class Segitiga extends BangunDatar {
  double _alas, _tinggi;

  Segitiga() {
    print('\nHitung Tanah Segitiga');
    stdout.write('- Masukan alas: ');
    _alas = double.tryParse(stdin.readLineSync()).validate();
    stdout.write('- Masukan tinggi: ');
    _tinggi = double.tryParse(stdin.readLineSync()).validate();
    print('Luas tanah Segitiga : ${luas.toString()} m');
  }

//  set alas(double value) {
//    _alas = value.validate();
//  }
//
//  set tinggi(double value) {
//    _tinggi = value.validate();
//  }

  @override
  double get luas => 0.5 * _alas * _tinggi;
}
