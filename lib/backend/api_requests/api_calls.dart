import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start supabase PostgREST Group Code

class SupabasePostgRESTGroup {
  static String getBaseUrl() =>
      'https://tlxqdnsernrakefzeqnb.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
  };
  static StoreListCall storeListCall = StoreListCall();
  static StoreListFilterCall storeListFilterCall = StoreListFilterCall();
  static StoreDetailCall storeDetailCall = StoreDetailCall();
  static PrefectureListCall prefectureListCall = PrefectureListCall();
  static ConstantCodeCall constantCodeCall = ConstantCodeCall();
  static ReviewListCall reviewListCall = ReviewListCall();
  static CategoryListCall categoryListCall = CategoryListCall();
}

class StoreListCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabasePostgRESTGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'store list',
      apiUrl: '${baseUrl}store',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
      },
      params: {
        'select':
            "id,name,phone_number,address_line,store_business_hour(open_time,close_time,code),prefecture(name),store_image(path),category(name)",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? storeName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  String? addressLine(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].address_line''',
      ));
  dynamic? prefecture(dynamic response) => getJsonField(
        response,
        r'''$[:].prefecture''',
      );
  String? prefectureName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].prefecture.name''',
      ));
  List? category(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      ) as List?;
  String? categoryName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].category[:].name''',
      ));
  String? phoneNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].phone_number''',
      ));
  String? storeId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  List? storeImage(dynamic response) => getJsonField(
        response,
        r'''$[:].store_image''',
        true,
      ) as List?;
  List? storeImagePath(dynamic response) => getJsonField(
        response,
        r'''$[:].store_image[:].path''',
        true,
      ) as List?;
  List? storeBusinessHour(dynamic response) => getJsonField(
        response,
        r'''$[:].store_business_hour''',
        true,
      ) as List?;
  String? storeBusinessHourOpenTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].store_business_hour[:].open_time''',
      ));
  String? storeBusinessHourCloseTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].store_business_hour[:].close_time''',
      ));
  int? storeBusinessHourCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].store_business_hour[:].code''',
      ));
}

class StoreListFilterCall {
  Future<ApiCallResponse> call({
    String? userId = '714845f7-0afd-4098-a3d1-016ef8be1e47',
  }) async {
    final baseUrl = SupabasePostgRESTGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'store list filter',
      apiUrl: '${baseUrl}store',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
      },
      params: {
        'created_user': "eq.${userId}",
        'select':
            "id,name,phone_number,address_line,prefecture(name),store_image(path),category(name)",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? storeName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  String? addressLine(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].address_line''',
      ));
  dynamic? prefecture(dynamic response) => getJsonField(
        response,
        r'''$[:].prefecture''',
      );
  String? prefectureName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].prefecture.name''',
      ));
  List? category(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      ) as List?;
  String? categoryName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].category[:].name''',
      ));
  String? phoneNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].phone_number''',
      ));
  String? storeId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  List? storeImage(dynamic response) => getJsonField(
        response,
        r'''$[:].store_image''',
        true,
      ) as List?;
  List? storeImagePath(dynamic response) => getJsonField(
        response,
        r'''$[:].store_image[:].path''',
        true,
      ) as List?;
}

class StoreDetailCall {
  Future<ApiCallResponse> call({
    String? storeId = '35d7556e-b57a-4f44-874a-8b0152bc6538',
  }) async {
    final baseUrl = SupabasePostgRESTGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'store detail',
      apiUrl: '${baseUrl}store',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
      },
      params: {
        'select':
            "id,name,phone_number,address_line,store_business_hour(open_time,close_time,code),prefecture(name),store_image(path),category(name)",
        'id': "eq.${storeId}",
        'limit': 1,
        'offset': 0,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? storeId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? storeName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  String? phoneNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].phone_number''',
      ));
  String? addressLine(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].address_line''',
      ));
  dynamic? prefecture(dynamic response) => getJsonField(
        response,
        r'''$[:].prefecture''',
      );
  String? prefectureName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].prefecture.name''',
      ));
  List? fileStorage(dynamic response) => getJsonField(
        response,
        r'''$[:].file_storage''',
        true,
      ) as List?;
  List? category(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      ) as List?;
  String? categoryName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].category[:].name''',
      ));
  int? storeBusinessHourCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].store_business_hour[:].code''',
      ));
  String? storeBusinessHourOpenTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].store_business_hour[:].open_time''',
      ));
  List? storeBusinessHour(dynamic response) => getJsonField(
        response,
        r'''$[:].store_business_hour''',
        true,
      ) as List?;
  String? storeBusinessHourCloseTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].store_business_hour[:].close_time''',
      ));
  List? storeImage(dynamic response) => getJsonField(
        response,
        r'''$[:].store_image''',
        true,
      ) as List?;
}

class PrefectureListCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabasePostgRESTGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'prefecture list',
      apiUrl: '${baseUrl}prefecture',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
      },
      params: {
        'select': "id,name",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? prefectureId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? prefectureName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ConstantCodeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabasePostgRESTGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'constant code',
      apiUrl: '${baseUrl}constant_code',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
      },
      params: {
        'select': "code,name",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ReviewListCall {
  Future<ApiCallResponse> call({
    String? storeId = '',
  }) async {
    final baseUrl = SupabasePostgRESTGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'review list',
      apiUrl: '${baseUrl}review',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
      },
      params: {
        'select': "id,store_id,user_id,comment,star",
        'store_id': "eq.${storeId}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? storeId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].store_id''',
      ));
  String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  String? comment(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].comment''',
      ));
  double? star(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].star''',
      ));
}

class CategoryListCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabasePostgRESTGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'category list',
      apiUrl: '${baseUrl}category',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA',
      },
      params: {
        'select': "id,name",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End supabase PostgREST Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
