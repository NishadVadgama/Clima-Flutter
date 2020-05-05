void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Res = await task2();
  task3(task2Res);
}

void task1() {
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSec = Duration(seconds: 3);

  String result;

  await Future.delayed(threeSec, () {
    result = 'Task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2res) {
  print('Task 3 complete with $task2res');
}
