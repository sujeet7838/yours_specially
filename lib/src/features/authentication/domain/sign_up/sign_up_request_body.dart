class SignUpRequestBody {
  //final String fname;
  final String userName;
  final String userEmail;
  final String password;
  final String phoneNumber;

  SignUpRequestBody({
    //required this.fname,
    required this.userName,
    required this.userEmail,
    required this.password,
    required this.phoneNumber,
  });
}
