void main() {
  Map<String, dynamic> map = {
    'Ten': 'An Lao',
    'Vi tri': 'Hai Phong',
    'Tuoi': 30,
    'Quoc Gia': 'Viet Nam'
  };
  map['Quoc Gia'] = 'Canada';
  map.forEach((key, value) {
    print('$key: $value');
  });
}