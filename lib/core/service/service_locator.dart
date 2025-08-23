import 'package:get_it/get_it.dart';
import 'package:omstore/core/bloc/global_cubit.dart';
import 'package:omstore/core/cache/cache_helper.dart';
import 'package:omstore/core/cache/secure_cache_helper.dart';
import 'package:omstore/core/locale/locale_cubit.dart';


final sl = GetIt.instance;


void initServiceLocator(){

  // cubits
  sl.registerFactory(()=>GlobalCubit());
  sl.registerFactory(()=>LocaleCubit());
  // sl.registerFactory(()=>HomeCubit(sl()));
  // sl.registerFactory(()=>AuthCubit(sl()));


  //auth feature
  // sl.registerLazySingleton(() => AuthRepository());
  // sl.registerLazySingleton(() => ProductRepository());


  // external
  sl.registerLazySingleton(()=>CacheHelper());
  sl.registerLazySingleton(()=>SecureCacheHelper());

  // Api
  // sl.registerLazySingleton<ApiConsumer>(()=>DioConsumer(sl()));
  // sl.registerLazySingleton(()=>Dio());



}