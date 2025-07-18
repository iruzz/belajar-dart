import 'dart:io';
import 'dart:convert';
import 'dart:io';

Future<void> loadTasks() async {
  var file = File('tasks.json');
  if (await file.exists()) {
    var contents = await file.readAsString();
    var jsonData = jsonDecode(contents);
    tasks = (jsonData as List).map((e) => Task(e['title'], done: e['done'])).toList();
  }
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

void main() async {
  // print('To-Do App started');
  // addTask('Belajar Dart');
  // addTask('Ngoding project');
  // print('Jumlah task: ${tasks.length}');

  // stdout.write('Masukkan task baru: ');
  // String? input = stdin.readLineSync();
  // if (input != null && input.isNotEmpty) {
  //   addTask(input);
  // }
   await loadTasks();
  showTasks();
  // toggleDone(0);
  // deleteTask(1);
}
