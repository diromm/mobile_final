import 'package:mobile_final/domain/entities/cat_entity.dart';

class CatModel {
  CatModel({
    required this.title,
    required this.description,
    required this.image,
    required this.rating,
  });

  String title;
  String description;
  String image;
  String rating;

  factory CatModel.fromJson(Map json) => CatModel(
        image: json['url'],
        title: json['id'],
        description: json['desc'],
        rating: json['vote_average'].toString(),
      );

  CatEntity toEntity() => CatEntity(
        name: title,
        description: description,
        image: image,
        rating: rating,
      );
}
