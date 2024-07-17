import 'dart:io';
import 'dart:collection';

void main() {
    int? n = int.tryParse(stdin.readLineSync() ?? '');

    // take list input
    List<int?> arr =  stdin.readLineSync()?.split(' ').map((e) => int.parse(e)).toList() ?? [];

    int? maxx = arr.reduce((value, element) => value! > element! ? value : element);

    for (int i = 0; i < n!; i++) {
        if (arr[i] == maxx) {
            print(i);
            break;
        }
    }
}