import 'dart:io';

import 'package:hitung_tanah/bangun_datar.dart';
import 'extension.dart';

class Lingkaran extends BangunDatar{
  static const _phi = 3.14;
  double _jariJari;

  Lingkaran() {
    print('\nHitung Tanah Lingkaran');
    stdout.write('- Masukan jari-jari: ');
    _jariJari = double.tryParse(stdin.readLineSync()).validate();
    print('Luas tanah Lingkaran : ${luas.toString()} m');
  }

//  set jariJari(double value) {
//    _jariJari = value.validate();
//  }

  @override
  double get luas => _phi * _jariJari * _jariJari;
}