class Task {
  final String title;
  final String category;
  final bool isCompleted;

  const Task({
    required this.title,
    required this.category,
    this.isCompleted = false,
  });
}
