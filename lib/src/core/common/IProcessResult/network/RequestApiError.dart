import 'package:true_core/src/core/common/IProcessResult/app/AppProcessError.dart';
import 'package:true_core/src/core/common/PrettyPrint.dart';

class RequestApiError extends AppProcessError {
  final int code;
  final String message;
  RequestApiError({
    required this.code,
    required this.message,
    super.error,
    super.stackTrace
  });
  
  @override
  PrettyPrint toPrettyPrint() {
    var pp = new PrettyPrint(title: "RequestApiError");
    pp.add("code", code);
    pp.add("message", message);
    pp.append(super.toPrettyPrint());
    return pp;
  }
}