import 'package:agile_on/data/repo/acm.dart';
import 'package:agile_on/data/repo/fibonacci.dart';
import 'package:agile_on/data/repo/repo.dart';
import 'package:agile_on/data/repo/sequential.dart';

import 'repo/size.dart';

class Factory {
  static Repo create(FactoryType type) {
    switch (type) {
      case FactoryType.FIBONACCI:
        return new FibonacciRepo();
      case FactoryType.SEQUENTIAL:
        return new SequentialRepo();
      case FactoryType.ACM:
        return new AcmRepo();
      case FactoryType.SIZE:
        return new SizeRepo();
      default:
        throw new Exception("Unknown repo type");
    }
  }
}

enum FactoryType {
  FIBONACCI,
  SEQUENTIAL,
  ACM,
  SIZE,
}
