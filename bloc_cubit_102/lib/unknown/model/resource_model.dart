import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'resource_model.g.dart';

@JsonSerializable()
class UnkownModel extends INetworkModel<UnkownModel> {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Data>? data;
  Support? support;

  UnkownModel({this.page, this.perPage, this.total, this.totalPages, this.data, this.support});

  @override
  Map<String, dynamic> toJson() {
    return _$UnkownModelToJson(this);
  }

  @override
  UnkownModel fromJson(Map<String, dynamic> json) {
    return _$UnkownModelFromJson(json);
  }
}

@JsonSerializable()
class Data {
  int? id;
  String? name;
  int? year;
  String? color;
  String? pantoneValue;

  Data({this.id, this.name, this.year, this.color, this.pantoneValue});

  factory Data.fromJson(Map<String, dynamic> json) {
    return _$DataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DataToJson(this);
  }
}

@JsonSerializable()
class Support {
  String? url;
  String? text;

  Support({this.url, this.text});

  factory Support.fromJson(Map<String, dynamic> json) {
    return _$SupportFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SupportToJson(this);
  }
}
