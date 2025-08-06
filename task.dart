class Task {
  String title;
  bool done;

  Task(this.title, {this.done = false});
}

void addTask(String title) {
  tasks.add(Task(title));
}

List<Task> tasks = [];

void main() {
  print('To-Do App started');
  addTask('Belajar Dart');
  addTask('Ngoding project');
  print('Jumlah task: ${tasks.length}');

}
