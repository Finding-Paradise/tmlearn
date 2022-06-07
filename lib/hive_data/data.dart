import 'package:equatable/equatable.dart';

class Phrases extends Equatable{
  String nameRus;
  String nameTurk;
  Phrases(this.nameRus, this.nameTurk);
  toJson() {
    return {"nameRus": nameRus, "nameTurk": nameTurk};
  }

  static fromJson(Map<String, dynamic> json) {
    return Phrases(
      json["nameRus"],
      json["nameTurk"],
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$nameRus:$nameTurk";
  }
  @override
  // TODO: implement props
  List<Object?> get props => [nameRus,nameTurk];
}
