class User {
  User({
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.username,
    required this.password,
    required this.mobile,
    required this.email,
  });
  late final String firstName;
  late final Null middleName;
  late final String lastName;
  late final String username;
  late final String password;
  late final String mobile;
  late final String email;

  User.fromJson(Map<String, dynamic> json){
    firstName = json['first_name'];
    middleName = null;
    lastName = json['last_name'];
    username = json['username'];
    password = json['password'];
    mobile = json['mobile'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['first_name'] = firstName;
    _data['middle_name'] = middleName;
    _data['last_name'] = lastName;
    _data['username'] = username;
    _data['password'] = password;
    _data['mobile'] = mobile;
    _data['email'] = email;
    return _data;
  }
}