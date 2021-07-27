
enum role{
  User,
  Admin,
  SuperAdmin
}
class UsersList{
  String? userName;
  String? password;
  String? mobileNumber;
  String? email;

  UsersList({this.userName, this.email, this.mobileNumber, this.password});

}