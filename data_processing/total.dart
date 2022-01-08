import 'dart:io';

void main(List<String> argumesnts) {
  if (argumesnts.isEmpty) {
    print('usage :dart total.dart <input.csv>');
    exit(1); //exit and show exit 1 for (exit with issue wile 0 extis without 0)
  }

  final input = argumesnts.first;
  final lines = File(input).readAsLinesSync();
  lines.removeAt(0);
  var totalActivitesByTag = <String, double>{};
  var totalDuration = 0.0;
  for (var line in lines) {
    final vlaues = line.split(',');

    final durationStr = vlaues[3].replaceAll('"', '');
    var duration = double.parse(durationStr);
    totalDuration += duration;
    var tag = vlaues[5].replaceAll('"', '');
    final previousTag = totalActivitesByTag[tag];
    if (previousTag == null) {
      totalActivitesByTag[tag] = duration;
    } else {
      totalActivitesByTag[tag] = previousTag + duration;
    }
    for (var item in totalActivitesByTag.entries) {
      final formatedValues = item.value.toStringAsFixed(1);
      final tag1 = item.key == '' ? 'Undefined' : item.key;

      print('Tag $tag1:Duration $formatedValues hour');
    }
    print('Total all tags:${totalDuration.toStringAsFixed(1)} Hour');
  }
}
















// -------------------------------------------------

//input = File (list).syncAsline
//file lines.split(',')
//totalActivitisBytag=map;
//for var line in lines;
//final values=line
//var durationStr =value[3].replaceAll('"','');
//duration=double.parse(durationStr);

//tag=value[5].replaceAll('"','');

//if totalActivitisBytag[tag]==null let equal duration
//for(vlaue in vlaues.entitiy){
//print key and vlaues.
//}