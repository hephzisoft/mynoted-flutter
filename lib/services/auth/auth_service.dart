import 'package:mynotes/services/auth/auth_provider.dart';
import 'package:mynotes/services/auth/auth_user.dart';

class AuthService implements AuthProvider {
  final AuthProvider provider;

  AuthService(this.provider);

  @override
  Future<AuthUser> Login({
    required String email,
    required String password,
  }) =>
      provider.Login(
        email: email,
        password: password,
      );

  @override
  Future<AuthUser> createUser({
    required String email,
    required String password,
  }) =>
      provider.createUser(
        email: email,
        password: password,
      );

  @override
  // TODO: implement currentUser
  AuthUser? get currentUser => provider.currentUser;

  @override
  Future<void> logOut() => provider.logOut();

  @override
  Future<void> sendEmailVerification() => provider.sendEmailVerification();
}
