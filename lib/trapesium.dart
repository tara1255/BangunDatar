import 'dart:io';

import 'package:hitung_tanah/bangun_datar.dart';
import 'extension.dart';

class Trapesium extends BangunDatar {
  double _panjangSisiAtas, _panjangSisiBawah, _tinggi;

  Trapesium() {
    print('\nHitung Tanah Trapesium');
    stdout.write('- Masukan panjang sisi atas: ');
    _panjangSisiAtas = double.tryParse(stdin.readLineSync()).validate();
    stdout.write('- Masukan panjang sisi bawah: ');
    _panjangSisiBawah = double.tryParse(stdin.readLineSync()).validate();
    stdout.write('- Masukan tinggi: ');
    _tinggi = double.tryParse(stdin.readLineSync()).validate();
    print('Luas tanah Trapesium : ${luas.toString()} m');
  }

//  set panjangSisiAtas(double value) {
//    _panjangSisiAtas = value.validate();
//  }
//
//  set panjangSisiBawah(double value) {
//    _panjangSisiBawah = value.validate();
//  }
//
//  set tinggi(double value) {
//    _tinggi = value.validate();
//  }

  @override
  double get luas => 0.5 * (_panjangSisiAtas + _panjangSisiBawah) * _tinggi;
}
