import 'package:equatable/equatable.dart';

class Tags extends Equatable {
  final String? amenity;
  final String? name;
  final String? nameAr;
  final String? nameEn;
  final String? religion;

  const Tags({
    this.amenity,
    this.name,
    this.nameAr,
    this.nameEn,
    this.religion,
  });

  factory Tags.fromJson(Map<String, dynamic> json) => Tags(
    amenity: json['amenity'] as String?,
    name: json['name'] as String?,
    nameAr: json['name:ar'] as String?,
    nameEn: json['name:en'] as String?,
    religion: json['religion'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'amenity': amenity,
    'name': name,
    'name:ar': nameAr,
    'name:en': nameEn,
    'religion': religion,
  };

  @override
  List<Object?> get props => [amenity, name, nameAr, nameEn, religion];
}
