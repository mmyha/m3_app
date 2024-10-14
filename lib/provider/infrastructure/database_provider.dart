import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_app/infrastracture/local/db/circle_database.dart';

final databaseProvider = Provider<CircleDatabase>((_) => CircleDatabase());
