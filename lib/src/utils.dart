import 'package:one_of/one_of.dart';

extension OneOfUtils on OneOf {
  T whenBuilder<T>(List<T Function()> builders) {
    return builders[typeIndex]();
  }
}
