class Task {
  String title;
  bool done = false;
  DateTime? createAt;
  final String tag;

  Task({required this.title, this.done = false, required this.tag}) {
    createAt = DateTime.now();
  }
}
