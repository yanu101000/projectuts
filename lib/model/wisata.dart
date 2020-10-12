// To parse this JSON data, do
//
//     final listWisata = listWisataFromJson(jsonString);

import 'dart:convert';

ListWisata listWisataFromJson(String str) => ListWisata.fromJson(json.decode(str));

String listWisataToJson(ListWisata data) => json.encode(data.toJson());

class ListWisata {
  ListWisata({
    this.wisata,
  });

  List<Wisata> wisata;

  factory ListWisata.fromJson(Map<String, dynamic> json) => ListWisata(
    wisata: List<Wisata>.from(json["wisata"].map((x) => Wisata.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "wisata": List<dynamic>.from(wisata.map((x) => x.toJson())),
  };
}

class Wisata {
  Wisata({
    this.id,
    this.nama,
    this.gambarUrl,
    this.kategori,
  });

  int id;
  String nama;
  String gambarUrl;
  String kategori;

  factory Wisata.fromJson(Map<String, dynamic> json) => Wisata(
    id: json["id"],
    nama: json["nama"],
    gambarUrl: json["gambar_url"],
    kategori: json["kategori"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nama": nama,
    "gambar_url": gambarUrl,
    "kategori": kategori,
  };
}