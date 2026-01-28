class ApiResponse<T> {

  ApiResponse({
    required this.status,
    required this.message,
    this.data
  });

  final String status;
  final String message;
  final T? data;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT
  ) {
    return ApiResponse<T>(
      status: json['status'] as String,
      message: json['message'] as String,
      data: json['data'] == null ? null : fromJsonT(json['data'])
    );
  }
}