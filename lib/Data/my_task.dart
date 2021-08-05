class MyTask {
  final String title;
  final String eventStatus;
  final DateTime dateTime;
  const MyTask(this.title, this.eventStatus, this.dateTime);

  @override
  String toString() => title;
}