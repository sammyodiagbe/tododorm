class Task {
  String title;
  bool done = false;
  DateTime? createAt;
  final String tag;

  Task({required this.title, required this.done, required this.tag}) {
    createAt = DateTime.now();
  }
}
