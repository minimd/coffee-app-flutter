import 'package:first_f/models/counters.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mainProvider.g.dart';

@riverpod
class MyNotifier extends _$MyNotifier {
  @override
  Counters build() {
    return Counters(strengthCounter: 0, sugarCounter: 0);  // Initial state
  }

  // Create a new Counters object with an updated sugar counter
  void increaseSugars() {
    state = state.copyWith(sugarCounter: state.sugarCounter + 1);  // Return new state
  }

  // Create a new Counters object with an updated strength counter
  void increaseStrength() {
    state = state.copyWith(strengthCounter: state.strengthCounter + 1);  // Return new state
  }
}
