class Phrases {
  String nameRus;
  String nameTurk;
  Phrases(this.nameRus, this.nameTurk);
  toJson(){}
  static fromJson(Map<String,dynamic> json){
    return Phrases(
      json["nameRus"],
      json["nameTurk"],
    );
  }
}

