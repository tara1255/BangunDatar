import 'dart:io';
import 'package:hitung_tanah/bangun_datar.dart';
import 'package:hitung_tanah/lingkaran.dart';
import 'package:hitung_tanah/persegi.dart';
import 'package:hitung_tanah/segitiga.dart';
import 'package:hitung_tanah/trapesium.dart';

List<BangunDatar> listBangunDatar = [];

void main(List<String> arguments) {

  hitungLuasTanah();

}

void hitungLuasTanah() {

  print('\n* Sistem Hitung Luas Tanah *\n'
      '1. Persegi\n'
      '2. Lingkaran\n'
      '3. Trapesium\n'
      '4. Segitiga\n'
      );

  stdout.write('Pilih Tipe Tanah yang Akan di Hitung: ');
  var selected = int.tryParse(stdin.readLineSync());
  switch (selected) {
    case 1:
      listBangunDatar.add(Persegi());
      break;

    case 2:
      listBangunDatar.add(Lingkaran());
      break;

    case 3:
      listBangunDatar.add(Trapesium());
      break;

    case 4:
      listBangunDatar.add(Segitiga());
      break;

  }
  hitungTotalLuasTanah();
}

void hitungTotalLuasTanah() {

  print('\n1. untuk lanjut menghitung tanah\n'
      '2. untuk menghitung total luas tanah\n'
      );

  stdout.write('Pilih salah satu untuk menlanjutkan: ');
  var selected = int.tryParse(stdin.readLineSync());
  switch (selected) {
    case 1:
      hitungLuasTanah();
      break;

    case 2:
      var totalLuas = 0.0;
      listBangunDatar.forEach((element) {
        totalLuas += element.luas;
      });
      print('\nLuas total tanah Pak Marwan : ${totalLuas.toString()} m');
      break;

  }
}
