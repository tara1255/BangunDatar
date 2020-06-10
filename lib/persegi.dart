import 'dart:io';

import 'package:hitung_tanah/bangun_datar.dart';
import 'extension.dart';

class Persegi extends BangunDatar{
  double _panjangSisi;

  Persegi(){
    print('\nHitung Tanah Persegi');
//    print('- Masukan panjang sisi:');
    stdout.write('- Masukan panjang sisi: ');
    _panjangSisi = double.tryParse(stdin.readLineSync()).validate();
    print('Luas tanah Persegi : ${luas.toString()} m');
  }

//  set panjangSisi(double value) {
//    _panjangSisi = value.validate();
//  }

  @override
  double get luas => _panjangSisi * _panjangSisi;

}