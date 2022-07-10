// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i8;
import '../../../application/fast_lauhg/fastlaughs_bloc.dart' as _i9;
import '../../../application/search/searchevent_bloc.dart' as _i7;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i4;
import '../../../infrastructure/search/search_impl.dart' as _i6;
import '../../downloads/models/i_downloadsrepo.dart' as _i3;
import '../../search/search_service.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IDownloadsRepo>(() => _i4.Downloadsrepository());
  gh.lazySingleton<_i5.SearchService>(() => _i6.SearchImpl());
  gh.factory<_i7.SearcheventBloc>(() =>
      _i7.SearcheventBloc(get<_i3.IDownloadsRepo>(), get<_i5.SearchService>()));
  gh.factory<_i8.DownloadsBloc>(
      () => _i8.DownloadsBloc(get<_i3.IDownloadsRepo>()));
  gh.factory<_i9.FastlaughsBloc>(
      () => _i9.FastlaughsBloc(get<_i3.IDownloadsRepo>()));
  return get;
}
