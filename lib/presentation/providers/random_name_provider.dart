

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final randomNameProvider = StateProvider.autoDispose<String>((ref) {
  // print('randomNameProvider');
  return RandomGenerator.getRandomName();
});