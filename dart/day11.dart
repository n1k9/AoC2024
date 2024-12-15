// --- Day 11: Plutonian Pebbles ---
import 'dart:io';

final test1 = [125, 17];

int part1(List<num> line, int blink) {
  var current = [...line];
  for (var i = 0; i < blink; i++) {
    print("Iteration $i");
    var new_line = <num>[];
    for (final value in current) {
      if (value == 0) {
        new_line.add(1);
      } else if (value.toString().length % 2 == 0) {
        final String vstr = value.toString();
        new_line.add(num.parse(vstr.substring(0, vstr.length ~/ 2)));
        new_line.add(num.parse(vstr.substring(vstr.length ~/ 2, vstr.length)));
      } else {
        new_line.add(value*2024);
      }
    }
    print("new: ${new_line.length}");
    current = [...new_line];
  }
  return current.length;
}

void main() {
  // print ("test 1 by 6 iteration: ${part1(test1, 6)}");
  // print ("test 1 by 25 iteration: ${part1(test1, 25)}");

  String input = File('../datas/day11.txt').readAsStringSync();
  var list = List<num>.from(input.split(' ').map((e) => num.parse(e)));
  // print ("Part 1 input by 25 iteration: ${part1(list, 25)}");
  print ("Part 2 input by 75 iteration: ${part1(list, 75)}");
}
