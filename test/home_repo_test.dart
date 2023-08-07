import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/shared_prefrences.dart';
import 'package:flutter_tasker/features/home/data/repos/home_repo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  test('delete task function', () {
    final homeRepo = HomeRepo();

    homeRepo.deleteTask(6);
  });
}
