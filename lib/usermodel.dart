class User{
  String _name;
  String _password;
  String _email;

  User(this._name,this._password,this._email);
  String get name => _name;
  set setname(String thing){
    this._name=thing;
  }
  String get password => _password;
  set setpassword(String thing){
    this._password=thing;
  }
  String get email => _email;
  set setemail(String thing){
    this._email;
  }

  var passname = Map<String,String>();
  var u = Map<Map,String>();
}