// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _HttpClient implements HttpClient {
  _HttpClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://api.football-data.org';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<TeamResponse> feachTeams() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result =
        await _dio.request<Map<String, dynamic>>('/v2/competitions/PL/teams',
            queryParameters: queryParameters,
            options: RequestOptions(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Content-Type': 'application/json',
                  r'X-Auth-Token': '9703d46d0a6c4e3f8f76ca1d17dcc150'
                },
                extra: _extra,
                contentType: 'application/json',
                baseUrl: baseUrl),
            data: _data);
    final value = TeamResponse.fromJson(_result.data);
    return value;
  }
}
