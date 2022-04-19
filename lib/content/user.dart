class User {
  String firstName;
  String? lastName;

  User({required this.firstName, this.lastName});
}

User userName = User(firstName: 'User', lastName: '');
