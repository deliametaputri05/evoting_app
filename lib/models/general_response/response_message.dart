class ResponseMessage {
  final String message;
  final int code;
  final bool status;
  dynamic data;
  ResponseMessage(
      {required this.message,
      required this.code,
      required this.status,
      this.data});
}
