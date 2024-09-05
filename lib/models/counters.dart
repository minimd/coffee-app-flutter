class Counters {
  final int strengthCounter;
  final int sugarCounter;

  Counters({
    required this.strengthCounter,
    required this.sugarCounter,
  });

  // Add the copyWith method
  Counters copyWith({
    int? strengthCounter,
    int? sugarCounter,
  }) {
    return Counters(
      strengthCounter: strengthCounter ?? this.strengthCounter,
      sugarCounter: sugarCounter ?? this.sugarCounter,
    );
  }
}
