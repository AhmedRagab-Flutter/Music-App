import 'package:get_it/get_it.dart';
import 'data/repository/auth/auth_repository_impl.dart';
import 'data/repository/song/song_repository_impl.dart';
import 'data/sources/auth/auth_firebase_service.dart';
import 'data/sources/song/song_firebase_service.dart';
import 'domain/repository/auth/auth.dart';
import 'domain/repository/song/song.dart';
import 'domain/usecases/auth/get_user.dart';
import 'domain/usecases/auth/sigin.dart';
import 'domain/usecases/auth/signup.dart';
import 'domain/usecases/song/add_or_remove_favorite_song.dart';
import 'domain/usecases/song/get_favorite_songs.dart';
import 'domain/usecases/song/get_news_songs.dart';
import 'domain/usecases/song/get_play_list.dart';
import 'domain/usecases/song/is_favorite_song.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  sl.registerSingleton<SongFirebaseService>(SongFirebaseServiceImpl());

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SongsRepository>(SongRepositoryImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<SigninUseCase>(SigninUseCase());

  sl.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());

  sl.registerSingleton<GetPlayListUseCase>(GetPlayListUseCase());

  sl.registerSingleton<AddOrRemoveFavoriteSongUseCase>(
      AddOrRemoveFavoriteSongUseCase());

  sl.registerSingleton<IsFavoriteSongUseCase>(IsFavoriteSongUseCase());

  sl.registerSingleton<GetUserUseCase>(GetUserUseCase());

  sl.registerSingleton<GetFavoriteSongsUseCase>(GetFavoriteSongsUseCase());
}