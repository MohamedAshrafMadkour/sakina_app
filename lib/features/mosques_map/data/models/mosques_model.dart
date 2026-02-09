class MosqueModel {
  final String name;
  final double lat;
  final double lng;

  MosqueModel({required this.name, required this.lat, required this.lng});

  factory MosqueModel.fromJson(Map<String, dynamic> json) => MosqueModel(
    name: json['name'],
    lat: json['lat'],
    lng: json['lng'],
  );
}
