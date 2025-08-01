class Task {
  String title;
  bool done;

  Task(this.title, {this.done = false});
}

void addTask(String title) {
  tasks.add(Task(title));
}

List<Task> tasks = [];

void showTasks() {
  for (var i = 0; i < tasks.length; i++) {
    var status = tasks[i].done ? '[x]' : '[ ]';
    print('$i. $status ${tasks[i].title}');
  }
}

void main() {
  print('To-Do App started');
  addTask('Belajar Dart');
  addTask('Ngoding project');
  print('Jumlah task: ${tasks.length}');
  showTasks();

}
