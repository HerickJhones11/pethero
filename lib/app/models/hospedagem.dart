
class Hospedagem{
  final email;
  var password;
  final name;
  final cpf;
  final tel;
  var valid;
  
  Hospedagem({ this.email = '', this.password = '', this.name = '', this.cpf = '', this.tel = '', valid = false});

  Hospedagem.fromJson(Map<String, Object?> json)
    : this(
        email: json['title']! as String,
        password: json['genre']! as String,
      );
  Map<String, Object?> toJson() {
    return {
      'email': email,
      'password': password,
      'tel': tel,
      'cpf': cpf,
      'name': name,
      'valid' : valid == null ? false : true
    };
  } 
}