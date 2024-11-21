List<double> convertToF(List<double> temperaturesInC){
  var temperaturesInF = <double>[];

  for (var temp in temperaturesInC){
    var tempInF = (temp * 9/5) + 32;

    temperaturesInF.add(double.parse(tempInF.toStringAsFixed(2)));
  }

  return temperaturesInF;
}