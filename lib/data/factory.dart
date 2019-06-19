import 'package:agile_on/data/repo/acm.dart';
import 'package:agile_on/data/repo/repo.dart';
import 'package:agile_on/data/repo/sequential.dart';

import 'repo/size.dart';

class Factory {
  static Repo create(FactoryType type) {
    switch (type) {
      case FactoryType.SEQUENTIAL:
        return SequentialRepo();
      case FactoryType.ACM:
        return AcmRepo();
      case FactoryType.SIZE:
        return SizeRepo();
      default:
        throw Exception("Unknown repo type");
    }
  }
}

enum FactoryType {
  SEQUENTIAL,
  ACM,
  SIZE,
}
