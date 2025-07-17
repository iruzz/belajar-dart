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

void toggleDone(int index) {
  if (index >= 0 && index < tasks.length) {
    tasks[index].done = !tasks[index].done;
  }
}

void deleteTask(int index) {
  if (index >= 0 && index < tasks.length) {
    tasks.removeAt(index);
  }
}

void main() {
  print('To-Do App started');
  addTask('Belajar Dart');
  addTask('Ngoding project');
  print('Jumlah task: ${tasks.length}');
  showTasks();
  toggleDone(0);

}
