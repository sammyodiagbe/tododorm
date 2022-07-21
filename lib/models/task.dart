class Task {
  String title;
  bool done = false;
  DateTime? createAt;
  final String tag;
  final String colorCode;

  Task(
      {required this.title,
      this.done = false,
      required this.tag,
      required this.colorCode}) {
    createAt = DateTime.now();
  }
}
