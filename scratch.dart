import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String data = await task2();
  task3(data);
}

void task3(String data) {
  print('Task 3 completed with' + data);
}

Future task2() async {
  String data = "empty";
  Duration duration = Duration(seconds: 3);
  await Future.delayed(duration, () {
    print('Task 2 completed');
    data = 'assigned';
  });

  return data;
}

void task1() {
  print('Task 1 completed');
}
