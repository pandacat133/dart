import 'dart:async';

import 'package:angular/core.dart';

//Acts as a mock server to store the data of the tracker

@Injectable()
class ProteinTrackerService {
  List<String> proteinTracker = <String>[];

  Future<List<String>> getProteinTracker() async => proteinTracker;
}
