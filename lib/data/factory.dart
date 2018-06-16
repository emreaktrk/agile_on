import 'package:agile_on/data/repo/acm.dart';
import 'package:agile_on/data/repo/repo.dart';
import 'package:agile_on/data/repo/sequential.dart';

class Factory {
  Repo create(FactoryType type) {
    switch (type) {
      case FactoryType.SEQUENTIAL:
        return new SequentialRepo();
      case FactoryType.ACM:
        return new AcmRepo();
      default:
        throw new Exception("Unknown repo type");
    }
  }
}

enum FactoryType {
  SEQUENTIAL,
  ACM,
}