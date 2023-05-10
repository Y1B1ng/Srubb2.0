class SignupWithEmailAndPasswordFailure{
  final String message;

  const SignupWithEmailAndPasswordFailure([this.message = "An Unknown error occurred."]);

  factory SignupWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case '': return SignupWithEmailAndPasswordFailure('');
      default: return SignupWithEmailAndPasswordFailure();
    }
  }

}