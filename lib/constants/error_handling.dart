import 'dart:convert';

import 'package:amazon_clone/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

void httpErrorHandle({
  required http.Response responce,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (responce.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackBar(context, jsonDecode(responce.body)['msg']);
      break;
    case 500:
      showSnackBar(context, jsonDecode(responce.body)['error']);
      break;
    default:
      showSnackBar(context, responce.body);
  }
}
