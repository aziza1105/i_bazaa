import 'package:hive/hive.dart';
import 'package:i_bazaa/feature/authentication/data/models/authenticated_user.dart';

void registerAdapters() {
  Hive.registerAdapter(AuthenticatedUserModelAdapter());
}