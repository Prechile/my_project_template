import 'dart:convert';

class ChangePasswordRequest{
  String OldPassword;
  String NewPassword;

  ChangePasswordRequest({
    required this.OldPassword,
    required this.NewPassword
  });

  toJson() {
    return jsonEncode({
      "oldPassword": OldPassword,
      "newPassword": NewPassword
    });
  }

}