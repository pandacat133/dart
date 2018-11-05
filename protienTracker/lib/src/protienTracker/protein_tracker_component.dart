import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'protein_tracker_service.dart';

@Component(
  selector: 'protein-tracker',
  styleUrls: ['protein_tracker_component.css'],
  templateUrl: 'protein_tracker_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [const ClassProvider(ProteinTrackerService)],
)

class ProteinTrackerComponent implements OnInit {
  final ProteinTrackerService proteinTrackerService;

  List<String> items = [];
  String proteinTracker = '';

  ProteinTrackerComponent(this.proteinTrackerService);

  @override
  Future<Null> ngOnInit() async {
    items = await proteinTrackerService.getProteinTracker();
  }

  void add() {
    items.add(proteinTracker);
    proteinTracker = '';
  }

  void reset() {

  }

  void settings() {

  }

  String remove(int index) => items.removeAt(index);
}
