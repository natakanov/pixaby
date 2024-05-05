import '../dto/hit_dto.dart';
import '../../domain/models/hit_model.dart';

extension HitDtoMapper on HitDto {
  HitModel toModel() => HitModel(
        id: id,
        url: webformatURL,
        largeURL: largeImageURL,
        likes: likes,
        views: views,
      );
}
