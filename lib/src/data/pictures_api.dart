import 'package:dio/dio.dart';
import 'dto/hits_list_dto.dart';

const apiKey = '43717729-524f914f188cb89cc7c553bba';

class PicturesApi {
  final Dio _client;

  const PicturesApi(this._client);

  Future<HitsListDto> fetchHits({
    int page = 1,
    String? query,
  }) =>
      _client.get<Map<String, Object?>>(
        'api/',
        queryParameters: {
          'key': apiKey,
          if (query != null) 'q': query,
          'page': page,
        },
      ).then((value) => HitsListDto.fromJson(value.data!));
}
