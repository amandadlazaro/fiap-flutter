import 'package:json_annotation/json_annotation.dart';

part 'repo_general.g.dart';

@JsonSerializable()
class RepoGeneral {
  const RepoGeneral({this.name, this.address, this.image});

  factory RepoGeneral.fromJson(Map<String, dynamic> json) => _$RepoGeneralFromJson(json);

  final String? name;
  final String? address;
  final String? image;


  Map<String, dynamic> toJson() => _$RepoGeneralToJson(this);
}