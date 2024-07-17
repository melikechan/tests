import 'dart:io';

void main() {
    int? n = int.tryParse(stdin.readLineSync() ?? '');

    print(n!-1);
}