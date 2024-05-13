import 'package:fiap_flutter/model/repo_general.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://petguardian-c1448453870e.herokuapp.com/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('petguardin/petshops')
  Future<List<RepoGeneral>> getRepoGeneral();

}