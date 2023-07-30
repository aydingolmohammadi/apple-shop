import 'package:apple_shop/features/feature_login/data/dto/login_dto.dart';
import 'package:apple_shop/features/feature_login/domain/params/login_param.dart';
import 'package:apple_shop/features/feature_sign_up/data/dto/sign_up_dto.dart';
import 'package:apple_shop/features/feature_sign_up/domain/params/sign_up_param.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../constants/constants.dart';

part 'remote_service.g.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class RemoteService {
  factory RemoteService(Dio dio, {String baseUrl}) = _RemoteService;

  @POST('records')
  Future<HttpResponse<SignUpDto>> signUpUser({
    @Body() required SignUpParam signUpParam,
  });

  @POST('auth-with-password')
  Future<HttpResponse<LoginDto>> loginUser({
    @Body() required LoginParam loginParam,
  });

  // @POST('proxy/app_request_otp')
  // Future<HttpResponse<LoginDto>> config({
  //   @Body() required LoginParam loginParam,
  // });

  // @POST('proxy/app_validate_otp')
  // Future<HttpResponse<OtpDto>> validate({
  //   @Body() required OtpParam otpParam,
  // });

  // @POST('proxy/app_get_information')
  // Future<HttpResponse<HomeDto>> getAppInformation({
  //   @Body() required HomeParam homeParam,
  // });

  // @POST('proxy/app_place_order')
  // Future<HttpResponse<PlaceOrderDto>> placeOrder({
  //   @Body() required PlaceOrderParam placeOrderParam,
  // });

  // @GET('/reverse?format=json')
  // @Extra({"API": "Openstreet"})
  // Future<HttpResponse<MapDto>> getAddress(
  //     @Query("lat") double lat,
  //     @Query("lon") double lon,
  //     );

  // @GET('/search?format=json')
  // @Extra({"API": "Openstreet"})
  // Future<HttpResponse<List<SearchDto>>> searchAddress(
  //     @Query("q") String word,
  //     );

  // @POST('proxy/app_get_province')
  // Future<HttpResponse<GetProvinceDto>> getProvince({
  //   @Body() required GetProvinceParam getProvinceParam,
  // });

  // @POST('proxy/app_get_county')
  // Future<HttpResponse<GetCountyDto>> getCounty({
  //   @Body() required GetCountyParam getCountyParam,
  // });

  // @POST('proxy/app_get_city')
  // Future<HttpResponse<GetCityDto>> getCity({
  //   @Body() required GetCityParam getCityParam,
  // });
}
