import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    stdout.write('Enter a command (add, remove, view, or quit): ');
    String command = stdin.readLineSync()!;

    if (command == 'add') {
      stdout.write('Enter a task: ');
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print('Task added!');
    } else if (command == 'remove') {
      stdout.write('Enter the task number to remove: ');
      int index = int.parse(stdin.readLineSync()!);
      if (index < 1 || index > tasks.length) {
        print('Invalid task number.');
      } else {
        tasks.removeAt(index - 1);
        print('Task removed!');
      }
    } else if (command == 'view') {
      if (tasks.isEmpty) {
        print('No tasks.');
      } else {
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      }
    } else if (command == 'quit') {
      break;
    } else {
      print('Invalid command.');
    }

    print('');
  }
}