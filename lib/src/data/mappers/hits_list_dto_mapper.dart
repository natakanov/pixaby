import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:pixaby/src/data/dto/hits_list_dto.dart';
import 'package:pixaby/src/data/mappers/hit_dto_mapper.dart';
import 'package:pixaby/src/domain/models/hits_list_model.dart';

extension HitsListDtoMatter on HitsListDto {
  HitsListModel toModel() => HitsListModel(
        total: total,
        hits: hits.map((it) => it.toModel()).toIList(),
      );
}
