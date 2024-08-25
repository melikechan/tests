import 'dart:io';
import 'dart:collection';

void main() {
    int? n = int.tryParse(stdin.readLineSync() ?? '');

    // take list input
    List<int> arr =  stdin.readLineSync()?.split(' ').map((e) => int.parse(e)).toList() ?? [];

    print(-1);
}