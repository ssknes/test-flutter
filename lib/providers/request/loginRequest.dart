class Login {
 late String key;
late String user;
 late String pass;


  Login({required this.key, required this.user, required this.pass});

  Login.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    user = json['user'];
    pass = json['pass'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['user'] = this.user;
    data['pass'] = this.pass;
    return data;
  }
}
