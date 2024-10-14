import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_app/infrastructure/local/db/circle_database.dart';

final databaseProvider = Provider<CircleDatabase>((_) => CircleDatabase());
