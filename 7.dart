void main() {
  Map<String, dynamic> inf = {
    'Vanh': '94756',
    'Nghia': '39573',
    'Tung': '12412',
    'Kien': '34342'
  };

  var length = inf.keys.where((key) => key.length == 4);

  print('Do dai 4: $length');
}