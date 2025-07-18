import 'dart:io';
import 'dart:convert';
import 'dart:io';

Future<void> saveTasks() async {
  var file = File('tasks.json');
  var jsonTasks = tasks.map((t) => {'title': t.title, 'done': t.done}).toList();
  await file.writeAsString(jsonEncode(jsonTasks));
}

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
  // print('To-Do App started');
  // addTask('Belajar Dart');
  // addTask('Ngoding project');
  // print('Jumlah task: ${tasks.length}');

  stdout.write('Masukkan task baru: ');
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    addTask(input);
  }
  showTasks();
  // toggleDone(0);
  // deleteTask(1);
}
