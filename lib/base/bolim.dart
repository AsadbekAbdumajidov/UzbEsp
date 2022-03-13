import 'package:uzesp/base/afsuslanish.dart';
import 'package:uzesp/base/akvaparkda.dart';
import 'package:uzesp/base/attorlik.dart';
import 'package:uzesp/base/avtobusda.dart';
import 'package:uzesp/base/bank.dart';
import 'package:uzesp/base/bojhona.dart';
import 'package:uzesp/base/boshVaqt.dart';
import 'package:uzesp/base/diqqatgasazovorJoylar.dart';
import 'package:uzesp/base/dokon.dart';
import 'package:uzesp/base/dokonKerakliSozlar.dart';
import 'package:uzesp/base/dokonlar.dart';
import 'package:uzesp/base/dorixonada.dart';
import 'package:uzesp/base/favqulotda.dart';
import 'package:uzesp/base/fotoplyonka.dart';
import 'package:uzesp/base/gullar.dart';
import 'package:uzesp/base/hayvonotBogida.dart';
import 'package:uzesp/base/iltimos.dart';
import 'package:uzesp/base/inkor.dart';
import 'package:uzesp/base/kasallik.dart';
import 'package:uzesp/base/kema.dart';
import 'package:uzesp/base/kerakli.dart';
import 'package:uzesp/base/kerakli2.dart';
import 'package:uzesp/base/kerakli3.dart';
import 'package:uzesp/base/kerakli4.dart';
import 'package:uzesp/base/kerakli5.dart';
import 'package:uzesp/base/kerakli6.dart';
import 'package:uzesp/base/kerakli7.dart';
import 'package:uzesp/base/kerakli8.dart';
import 'package:uzesp/base/keraklisoz9.dart';
import 'package:uzesp/base/kinoKonsert.dart';
import 'package:uzesp/base/kiyimlar.dart';
import 'package:uzesp/base/konstovar.dart';
import 'package:uzesp/base/muloqot.dart';
import 'package:uzesp/base/murojat.dart';
import 'package:uzesp/base/muzey.dart';
import 'package:uzesp/base/obHavo.dart';
import 'package:uzesp/base/oyoqKiyim.dart';
import 'package:uzesp/base/oziqOvqatDokon.dart';
import 'package:uzesp/base/poezdda.dart';
import 'package:uzesp/base/qimmatbahoBuyumlar.dart';
import 'package:uzesp/base/rozilik.dart';
import 'package:uzesp/base/salomlashish.dart';
import 'package:uzesp/base/salon.dart';
import 'package:uzesp/base/sartaroshxonada.dart';
import 'package:uzesp/base/shaxsiy.dart';
import 'package:uzesp/base/shifokor.dart';
import 'package:uzesp/base/soatTuzatish.dart';
import 'package:uzesp/base/sovgalarIdishlar.dart';
import 'package:uzesp/base/sport.dart';
import 'package:uzesp/base/taklif.dart';
import 'package:uzesp/base/tamaki.dart';
import 'package:uzesp/base/teatr.dart';
import 'package:uzesp/base/tilakVaIstaklar.dart';
import 'package:uzesp/base/tillar.dart';
import 'package:uzesp/base/uyRozgor.dart';
import 'package:uzesp/base/uyTexnikasi.dart';
import 'package:uzesp/base/xayrlashish.dart';
import 'package:uzesp/base/xizmatlar.dart';
import 'package:uzesp/base/xushmumilalik.dart';
import 'package:uzesp/base/yozuvlar.dart';
import 'package:uzesp/base/zargarKS.dart';
import 'package:uzesp/base/zaruriyMalumotlar.dart';

List bolim = [
  afsuslanish,
  akvapark,
  attorlik,
  avtobusDa,
  bank,
  bojhona,
  boshVaqt,
  diqaqatgaSJ,
  dokon,
  dokonKerakliSozlar,
  dokonlar,
  dorixona,
  favqulot,
  fotoplyonka,
  gullar,
  hayvonotBogida,
  iltimos,
  inkor,
  kasallik,
  kasb,
  kema,
  kerakli,
  kerakli2,
  kerakli3,
  kerakli4,
  kerakli5,
  kerakli6,
  kerakli7,
  kerakli8,
  kerakli9,
  kinoKonsert,
  kiyimlar,
  konstovar,
  muloqot,
  murojat,
  muzey,
  obHavo,
  oyoqKiyim,
  oziqOvqatDokon,
  poezdDa,
  qimmatBahoBuyumlar,
  rozilik,
  salomlashish,
  gozallikSalon,
  sartaroshxonada,
  shaxsiymal,
  shifokorlar,
  soatTuzatih,
  sovgalarIdishlar,
  sport,
  taklif,
  tamaki,
  teatr,
  tilakVaIstaklar,
  tillar,
  uyRozgor,
  uyTexnikasi,
  xayrlashish,
  xizmatlar,
  xushmuomilalik,
  yozuvlar,
  zargarlikKerakliSozlar,
  zaruriyMalumotlar,
];
List<Map<String, dynamic>> bolimlar = [
  {"name": "Afsuslanish", "img": "assets/png/1.png"},
  {"name": "Akvaparkda", "img": "assets/png/2.png"},
  {"name": "Attorlik", "img": "assets/png/3.png"},
  {"name": "Avtobusda", "img": "assets/png/4.png"},
  {"name": "Bank", "img": "assets/png/5.png"},
  {"name": "Bojhona", "img": "assets/png/6.png"},
  {"name": "Bo'sh vaqt", "img": "assets/png/7.png"},
  {"name": "Diqqatga sazovor joylar", "img": "assets/png/8.png"},
  {"name": "Do'kon", "img": "assets/png/9.png"},
  {"name": "Do'konda kerakli so'zlar", "img": "assets/png/10.png"},
  {"name": "Do'konlar", "img": "assets/png/11.png"},
  {"name": "Dorixonada", "img": "assets/png/12.png"},
  {"name": "Favqulotda", "img": "assets/png/13.png"},
  {"name": "Fotoplyonka", "img": "assets/png/14.png"},
  {"name": "Gullar", "img": "assets/png/15.png"},
  {"name": "Hayvonot bog'i", "img": "assets/png/16.png"},
  {"name": "Iltimos", "img": "assets/png/17.png"},
  {"name": "Inkor", "img": "assets/png/18.png"},
  {"name": "Kasallik", "img": "assets/png/19.png"},
  {"name": "Kasb", "img": "assets/png/20.png"},
  {"name": "Kema", "img": "assets/png/21.png"},
  {"name": "Kerakli so'zlar 1", "img": "assets/png/22.png"},
  {"name": "Kerakli so'zlar 2", "img": "assets/png/23.png"},
  {"name": "Kerakli so'zlar 3", "img": "assets/png/24.png"},
  {"name": "Kerakli so'zlar 4", "img": "assets/png/25.png"},
  {"name": "Kerakli so'zlar 5", "img": "assets/png/26.png"},
  {"name": "Kerakli so'zlar 6", "img": "assets/png/27.png"},
  {"name": "Kerakli so'zlar 7", "img": "assets/png/29.png"},
  {"name": "Kerakli so'zlar 8", "img": "assets/png/30.png"},
  {"name": "Kerakli so'zlar 9", "img": "assets/png/31.png"},
  {"name": "Kino konsert", "img": "assets/png/32.png"},
  {"name": "Kiyimlar", "img": "assets/png/33.png"},
  {"name": "Konstovarlar", "img": "assets/png/34.png"},
  {"name": "Muloqot", "img": "assets/png/35.png"},
  {"name": "Murojat", "img": "assets/png/26.png"},
  {"name": "Muzey", "img": "assets/png/27.png"},
  {"name": "Ob havo", "img": "assets/png/29.png"},
  {"name": "Oyoq kiyim", "img": "assets/png/30.png"},
  {"name": "Oziq ovqat do'koni", "img": "assets/png/31.png"},
  {"name": "Poyezda", "img": "assets/png/32.png"},
  {"name": "Qimmat baho buyumlar", "img": "assets/png/33.png"},
  {"name": "Rozilik", "img": "assets/png/34.png"},
  {"name": "Salomlashish", "img": "assets/png/35.png"},
  {"name": "Go'zallik saloni", "img": "assets/png/31.png"},
  {"name": "Sartaroshxonada", "img": "assets/png/32.png"},
  {"name": "Shaxsiy", "img": "assets/png/33.png"},
  {"name": "Shifokor", "img": "assets/png/34.png"},
  {"name": "Soat tuzatish", "img": "assets/png/35.png"},
  {"name": "Sovg'alar olish", "img": "assets/png/36.png"},
  {"name": "Sport", "img": "assets/png/37.png"},
  {"name": "Taklif", "img": "assets/png/38.png"},
  {"name": "Tamaki", "img": "assets/png/39.png"},
  {"name": "Teatr", "img": "assets/png/40.png"},
  {"name": "Tilak va istaklar", "img": "assets/png/41.png"},
  {"name": "Tillar", "img": "assets/png/42.png"},
  {"name": "Uy ro'zg'or", "img": "assets/png/43.png"},
  {"name": "Uy texnikasi", "img": "assets/png/44.png"},
  {"name": "Xayirlashish", "img": "assets/png/45.png"},
  {"name": "Xizmatlar", "img": "assets/png/46.png"},
  {"name": "Xushmuomalalik", "img": "assets/png/47.png"},
  {"name": "Yozuvlar", "img": "assets/png/48.png"},
  {"name": "Zargarlik uchun so'zlar", "img": "assets/png/49.png"},
  {"name": "Zaruriy malumotlar", "img": "assets/png/50.png"},
];
