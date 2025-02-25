import 'package:cores_domain/core.dart';
import 'package:cores_domain/designsystem.dart';
import 'package:cores_domain/goods.dart';
import 'package:cores_domain/post.dart';
import 'package:cores_domain/user.dart';
import 'package:infrastructure_firebase/core.dart';
import 'package:infrastructure_firebase/post.dart';
import 'package:infrastructure_firebase/user.dart';
import 'package:infrastructure_mock/goods.dart';
import 'package:infrastructure_shared_preferences/designsystem.dart';
import 'package:infrastructure_shared_preferences/goods.dart';
import 'package:infrastructure_shared_preferences/init.dart';
import 'package:riverpod/riverpod.dart';

Future<List<Override>> initializeInfrastructureProviders() async {
  return <Override>[
    // SharedPreferences
    ...await initializeSharedPreferencesProviders(),
    themeRepositoryProvider.overrideWith(SharedPreferencesThemeRepository.new),
    goodsConfigRepositoryProvider.overrideWith(
      SharedPreferencesGoodsConfigRepository.new,
    ),

    // Firebase
    userRepositoryProvider.overrideWith(FirebaseUserRepository.new),
    postRepositoryProvider.overrideWith(FirebasePostRepository.new),
    appMaintenanceRepositoryProvider.overrideWith(
      RemoteConfigAppMaintenanceRepository.new,
    ),
    appVersionRepositoryProvider.overrideWith(
      RemoteConfigAppVersionRepository.new,
    ),

    // Mock
    goodsRepositoryProvider.overrideWith(MockGoodsRepository.new),
  ];
}
