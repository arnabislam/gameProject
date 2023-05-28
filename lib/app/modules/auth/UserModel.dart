import 'dart:convert';

/// user : {"name":"sagor","email":"a1mi@gmail.com","phone":"01941949271","institute":"sheikhit","updated_at":"2023-03-22T17:48:20.000000Z","created_at":"2023-03-22T17:48:20.000000Z","id":3}
/// token : "8|AcMtO6pXPCRi3HHP5ZeLdUFtfw7IaVcuahv8qblL"

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    User? user,
    String? token,
  }) {
    _user = user;
    _token = token;
  }

  UserModel.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
  }
  User? _user;
  String? _token;
  UserModel copyWith({
    User? user,
    String? token,
  }) =>
      UserModel(
        user: user ?? _user,
        token: token ?? _token,
      );
  User? get user => _user;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['token'] = _token;
    return map;
  }
}

/// name : "sagor"
/// email : "a1mi@gmail.com"
/// phone : "01941949271"
/// institute : "sheikhit"
/// updated_at : "2023-03-22T17:48:20.000000Z"
/// created_at : "2023-03-22T17:48:20.000000Z"
/// id : 3

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    String? name,
    String? email,
    String? phone,
    String? institute,
    String? updatedAt,
    String? createdAt,
    num? id,
  }) {
    _name = name;
    _email = email;
    _phone = phone;
    _institute = institute;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
  }

  User.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _institute = json['institute'];
    _updatedAt = json['updated_at'];
    _createdAt = json['created_at'];
    _id = json['id'];
  }
  String? _name;
  String? _email;
  String? _phone;
  String? _institute;
  String? _updatedAt;
  String? _createdAt;
  num? _id;
  User copyWith({
    String? name,
    String? email,
    String? phone,
    String? institute,
    String? updatedAt,
    String? createdAt,
    num? id,
  }) =>
      User(
        name: name ?? _name,
        email: email ?? _email,
        phone: phone ?? _phone,
        institute: institute ?? _institute,
        updatedAt: updatedAt ?? _updatedAt,
        createdAt: createdAt ?? _createdAt,
        id: id ?? _id,
      );
  String? get name => _name;
  String? get email => _email;
  String? get phone => _phone;
  String? get institute => _institute;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['phone'] = _phone;
    map['institute'] = _institute;
    map['updated_at'] = _updatedAt;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    return map;
  }
}
