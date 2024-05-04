import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../FutureProvider/FutureProvider.dart';

final productdataprovider=FutureProvider<String>((ref) {
  return ref.watch(provider).convertToHLS();
});