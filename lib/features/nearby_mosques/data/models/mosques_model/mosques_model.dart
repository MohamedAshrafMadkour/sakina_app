import 'package:equatable/equatable.dart';
import 'package:sakina_app/features/nearby_mosques/data/models/mosques_model/tags.dart';

class MosquesModel extends Equatable {
  final String? type;
  final int? id;
  final double? lat;
  final double? lon;
  final Tags? tags;
  final String? address;

  const MosquesModel({
    this.type,
    this.id,
    this.lat,
    this.lon,
    this.tags,
    this.address,
  });

  factory MosquesModel.fromJson(Map<String, dynamic> json) {
    final tagsJson = json['tags'] as Map<String, dynamic>?;

    String buildAddress(Map<String, dynamic>? tags) {
      if (tags == null) return 'العنوان غير متوفر';
      final street = tags['addr:street'] ?? '';
      final number = tags['addr:housenumber'] ?? '';
      final city = tags['addr:city'] ?? '';
      final postcode = tags['addr:postcode'] ?? '';
      String address = '';
      if (number.isNotEmpty) address += '$number ';
      if (street.isNotEmpty) address += street;
      if (city.isNotEmpty) address += ', $city';
      if (postcode.isNotEmpty) address += ', $postcode';
      return address.isEmpty ? 'العنوان غير متوفر' : address;
    }

    return MosquesModel(
      type: json['type'] as String?,
      id: json['id'] as int?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      tags: tagsJson == null ? null : Tags.fromJson(tagsJson),
      address: buildAddress(tagsJson), // ← بننشئ العنوان هنا
    );
  }

  @override
  List<Object?> get props => [type, id, lat, lon, tags, address];
}
