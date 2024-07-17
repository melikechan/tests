import 'dart:io';
import 'dart:collection';

void main() {
    int? n = int.tryParse(stdin.readLineSync() ?? '');

    List<int?> arr = List.filled(5000000, 0);
    
    for (int i = 0; i < 5000000; i++) {
        print(arr[i]);
    }

}