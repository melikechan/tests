import 'dart:io';
import 'dart:collection';

void main() {
    int? n = int.tryParse(stdin.readLineSync() ?? '');

    List<int?> arr = List.filled(10, 0);

    print(arr[n!+10]);
}