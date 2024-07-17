import 'dart:io';

void main() {
    int? n = int.tryParse(stdin.readLineSync() ?? '');

    while (true) {
        print(n!);
    }
}