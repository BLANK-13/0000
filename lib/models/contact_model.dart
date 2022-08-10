class ContactModel {
  String firstName;
  String lastName;
  String email;
  String mobile;
  String messageTitle;
  String messageType;
  String messageDesc;
  String? attachment;

  ContactModel(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.mobile,
      required this.messageTitle,
      required this.messageType,
      required this.messageDesc,
      this.attachment});

  // factory ContactModel.toJson(ContactModel post) async {ContactModel()} ;

}
