import 'package:firebase_database/firebase_database.dart';

class Kategori{
  static const KEY = "key";
  static const JUDUL = "judul";
  static const IMAGE = "image";

  String key;
  String judul;
  String image;

  Kategori(this.judul,this.image);

  Kategori.fromSnapshot(DataSnapshot snap):
      this.key = snap.key,
      this.judul = snap.value[JUDUL],
      this.image = snap.value[IMAGE];
  
  Map toMap(){
    return {JUDUL:judul,IMAGE:image,KEY:key};
  }
      
}