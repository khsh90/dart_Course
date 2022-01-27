class Creditial {
  Creditial({this.name = '', this.password = ''});
  final name;
  final password;

  Creditial copyWith({String? name, String? password}) {
    return Creditial(
        name: name ?? this.name, password: password ?? this.password);
  }

  @override
  String toString() {
    return 'Credential($name, $password) ';
  }
}

void main() {
  final cred1 = Creditial(name: 'user');
  final update1 = cred1.copyWith(name: 'khaled');


final update2=update1.copyWith(password: '456') ;
  print(update1);

  print (update2);
}
