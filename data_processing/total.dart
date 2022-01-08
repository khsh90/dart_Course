import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('usage :dart total.dart <input.csv>');
    exit(1);
  }
  final input = arguments.first;
  final lines = File(input).readAsLinesSync();
  final totalDurationByTag = <String, double>{};

  lines.removeAt(0);

  for (var line in lines) {
    final values = line.split(',');
    final durationStr = values[3].replaceAll('"', '');
    final duration = double.parse(durationStr);
    final tag = values[5].replaceAll('"', '');
    var previousTagvalue = totalDurationByTag[tag];

    if (previousTagvalue == null) {
      previousTagvalue = duration;
    } else {
      totalDurationByTag[tag] = previousTagvalue + duration;
    }

    for (var entry in totalDurationByTag.entries) {
      final properFormatedValue = entry.value.toStringAsFixed(1);
      final keyTag = entry.key;

      print('$tag :$properFormatedValue');
    }

  }
}

//lines=File[input]
//durationByMap=empty map {}
//line.removeAt(0) in order to delete the ""
//for (va line in lines){
//values=line.split(',')
//duration=value[3]
//taf=value[5]
//}