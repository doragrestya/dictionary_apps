class Kamus{
  final int id_kamus;
  final String istilah_kamus;
  final String arti_kamus;

  Kamus({this.id_kamus, this.istilah_kamus, this.arti_kamus});

  factory Kamus.formJson(Map<String, dynamic> json){
    return Kamus(
      istilah_kamus: json['istilah_kamus'],
      arti_kamus: json['arti_kamus'],
    );
  }
}