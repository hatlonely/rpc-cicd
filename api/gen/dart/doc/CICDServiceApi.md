# openapi.api.CICDServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cICDServiceDelJob**](CICDServiceApi.md#cICDServiceDelJob) | **DELETE** /v1/job/{id} | 
[**cICDServiceDelSubTask**](CICDServiceApi.md#cICDServiceDelSubTask) | **DELETE** /v1/subTask/{id} | 
[**cICDServiceDelTask**](CICDServiceApi.md#cICDServiceDelTask) | **DELETE** /v1/task/{id} | 
[**cICDServiceDelVariable**](CICDServiceApi.md#cICDServiceDelVariable) | **DELETE** /v1/variable/{id} | 
[**cICDServiceGetJob**](CICDServiceApi.md#cICDServiceGetJob) | **GET** /v1/job/{id} | 
[**cICDServiceGetSubTask**](CICDServiceApi.md#cICDServiceGetSubTask) | **GET** /v1/subTask/{id} | 
[**cICDServiceGetSubTasks**](CICDServiceApi.md#cICDServiceGetSubTasks) | **POST** /v1/getSubTasks | 
[**cICDServiceGetTask**](CICDServiceApi.md#cICDServiceGetTask) | **GET** /v1/task/{id} | 
[**cICDServiceGetVariable**](CICDServiceApi.md#cICDServiceGetVariable) | **GET** /v1/variable/{id} | 
[**cICDServiceGetVariables**](CICDServiceApi.md#cICDServiceGetVariables) | **POST** /v1/getVariables | 
[**cICDServiceListJob**](CICDServiceApi.md#cICDServiceListJob) | **GET** /v1/job | 
[**cICDServiceListSubTask**](CICDServiceApi.md#cICDServiceListSubTask) | **GET** /v1/subTask | 
[**cICDServiceListTask**](CICDServiceApi.md#cICDServiceListTask) | **GET** /v1/task | 
[**cICDServiceListVariable**](CICDServiceApi.md#cICDServiceListVariable) | **GET** /v1/variable | 
[**cICDServicePutSubTask**](CICDServiceApi.md#cICDServicePutSubTask) | **POST** /v1/subTask | 
[**cICDServicePutTask**](CICDServiceApi.md#cICDServicePutTask) | **POST** /v1/task | 
[**cICDServicePutVariable**](CICDServiceApi.md#cICDServicePutVariable) | **POST** /v1/variable | 
[**cICDServiceRunTask**](CICDServiceApi.md#cICDServiceRunTask) | **POST** /v1/runTask | 
[**cICDServiceUpdateSubTask**](CICDServiceApi.md#cICDServiceUpdateSubTask) | **PUT** /v1/subTask/{subTask.id} | 
[**cICDServiceUpdateTask**](CICDServiceApi.md#cICDServiceUpdateTask) | **PUT** /v1/task/{task.id} | 
[**cICDServiceUpdateVariable**](CICDServiceApi.md#cICDServiceUpdateVariable) | **PUT** /v1/variable/{variable.id} | 


# **cICDServiceDelJob**
> ApiDelJobRes cICDServiceDelJob(id)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var id = id_example; // String | 

try { 
    var result = api_instance.cICDServiceDelJob(id);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceDelJob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**ApiDelJobRes**](ApiDelJobRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceDelSubTask**
> ApiDelSubTaskRes cICDServiceDelSubTask(id)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var id = id_example; // String | 

try { 
    var result = api_instance.cICDServiceDelSubTask(id);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceDelSubTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**ApiDelSubTaskRes**](ApiDelSubTaskRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceDelTask**
> ApiDelTaskRes cICDServiceDelTask(id)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var id = id_example; // String | 

try { 
    var result = api_instance.cICDServiceDelTask(id);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceDelTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**ApiDelTaskRes**](ApiDelTaskRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceDelVariable**
> ApiDelVariableRes cICDServiceDelVariable(id)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var id = id_example; // String | 

try { 
    var result = api_instance.cICDServiceDelVariable(id);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceDelVariable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**ApiDelVariableRes**](ApiDelVariableRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceGetJob**
> ApiJob cICDServiceGetJob(id)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var id = id_example; // String | 

try { 
    var result = api_instance.cICDServiceGetJob(id);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceGetJob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**ApiJob**](ApiJob.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceGetSubTask**
> ApiSubTask cICDServiceGetSubTask(id)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var id = id_example; // String | 

try { 
    var result = api_instance.cICDServiceGetSubTask(id);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceGetSubTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**ApiSubTask**](ApiSubTask.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceGetSubTasks**
> ApiListSubTaskRes cICDServiceGetSubTasks(body)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var body = ApiGetSubTasksReq(); // ApiGetSubTasksReq | 

try { 
    var result = api_instance.cICDServiceGetSubTasks(body);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceGetSubTasks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiGetSubTasksReq**](ApiGetSubTasksReq.md)|  | 

### Return type

[**ApiListSubTaskRes**](ApiListSubTaskRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceGetTask**
> ApiTask cICDServiceGetTask(id)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var id = id_example; // String | 

try { 
    var result = api_instance.cICDServiceGetTask(id);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceGetTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**ApiTask**](ApiTask.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceGetVariable**
> ApiVariable cICDServiceGetVariable(id)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var id = id_example; // String | 

try { 
    var result = api_instance.cICDServiceGetVariable(id);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceGetVariable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**ApiVariable**](ApiVariable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceGetVariables**
> ApiListVariableRes cICDServiceGetVariables(body)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var body = ApiGetVariablesReq(); // ApiGetVariablesReq | 

try { 
    var result = api_instance.cICDServiceGetVariables(body);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceGetVariables: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiGetVariablesReq**](ApiGetVariablesReq.md)|  | 

### Return type

[**ApiListVariableRes**](ApiListVariableRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceListJob**
> ApiListJobRes cICDServiceListJob(offset, limit, taskID)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var offset = offset_example; // String | 
var limit = limit_example; // String | 
var taskID = taskID_example; // String | 

try { 
    var result = api_instance.cICDServiceListJob(offset, limit, taskID);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceListJob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **String**|  | [optional] [default to null]
 **limit** | **String**|  | [optional] [default to null]
 **taskID** | **String**|  | [optional] [default to null]

### Return type

[**ApiListJobRes**](ApiListJobRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceListSubTask**
> ApiListSubTaskRes cICDServiceListSubTask(offset, limit, brief)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var offset = offset_example; // String | 
var limit = limit_example; // String | 
var brief = true; // bool | 

try { 
    var result = api_instance.cICDServiceListSubTask(offset, limit, brief);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceListSubTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **String**|  | [optional] [default to null]
 **limit** | **String**|  | [optional] [default to null]
 **brief** | **bool**|  | [optional] [default to null]

### Return type

[**ApiListSubTaskRes**](ApiListSubTaskRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceListTask**
> ApiListTaskRes cICDServiceListTask(offset, limit, brief)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var offset = offset_example; // String | 
var limit = limit_example; // String | 
var brief = true; // bool | 

try { 
    var result = api_instance.cICDServiceListTask(offset, limit, brief);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceListTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **String**|  | [optional] [default to null]
 **limit** | **String**|  | [optional] [default to null]
 **brief** | **bool**|  | [optional] [default to null]

### Return type

[**ApiListTaskRes**](ApiListTaskRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceListVariable**
> ApiListVariableRes cICDServiceListVariable(offset, limit, brief)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var offset = offset_example; // String | 
var limit = limit_example; // String | 
var brief = true; // bool | 

try { 
    var result = api_instance.cICDServiceListVariable(offset, limit, brief);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceListVariable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **String**|  | [optional] [default to null]
 **limit** | **String**|  | [optional] [default to null]
 **brief** | **bool**|  | [optional] [default to null]

### Return type

[**ApiListVariableRes**](ApiListVariableRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServicePutSubTask**
> ApiPutSubTaskRes cICDServicePutSubTask(body)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var body = ApiSubTask(); // ApiSubTask | 

try { 
    var result = api_instance.cICDServicePutSubTask(body);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServicePutSubTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiSubTask**](ApiSubTask.md)|  | 

### Return type

[**ApiPutSubTaskRes**](ApiPutSubTaskRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServicePutTask**
> ApiPutTaskRes cICDServicePutTask(body)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var body = ApiTask(); // ApiTask | 

try { 
    var result = api_instance.cICDServicePutTask(body);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServicePutTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiTask**](ApiTask.md)|  | 

### Return type

[**ApiPutTaskRes**](ApiPutTaskRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServicePutVariable**
> ApiPutVariableRes cICDServicePutVariable(body)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var body = ApiVariable(); // ApiVariable | 

try { 
    var result = api_instance.cICDServicePutVariable(body);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServicePutVariable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiVariable**](ApiVariable.md)|  | 

### Return type

[**ApiPutVariableRes**](ApiPutVariableRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceRunTask**
> ApiRunTaskRes cICDServiceRunTask(body)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var body = ApiRunTaskReq(); // ApiRunTaskReq | 

try { 
    var result = api_instance.cICDServiceRunTask(body);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceRunTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiRunTaskReq**](ApiRunTaskReq.md)|  | 

### Return type

[**ApiRunTaskRes**](ApiRunTaskRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceUpdateSubTask**
> ApiUpdateSubTaskRes cICDServiceUpdateSubTask(subTaskId, body)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var subTaskId = subTaskId_example; // String | 
var body = ApiSubTask(); // ApiSubTask | 

try { 
    var result = api_instance.cICDServiceUpdateSubTask(subTaskId, body);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceUpdateSubTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subTaskId** | **String**|  | [default to null]
 **body** | [**ApiSubTask**](ApiSubTask.md)|  | 

### Return type

[**ApiUpdateSubTaskRes**](ApiUpdateSubTaskRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceUpdateTask**
> ApiUpdateTaskRes cICDServiceUpdateTask(taskId, body)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var taskId = taskId_example; // String | 
var body = ApiTask(); // ApiTask | 

try { 
    var result = api_instance.cICDServiceUpdateTask(taskId, body);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceUpdateTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**|  | [default to null]
 **body** | [**ApiTask**](ApiTask.md)|  | 

### Return type

[**ApiUpdateTaskRes**](ApiUpdateTaskRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cICDServiceUpdateVariable**
> ApiUpdateVariableRes cICDServiceUpdateVariable(variableId, body)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = CICDServiceApi();
var variableId = variableId_example; // String | 
var body = ApiVariable(); // ApiVariable | 

try { 
    var result = api_instance.cICDServiceUpdateVariable(variableId, body);
    print(result);
} catch (e) {
    print("Exception when calling CICDServiceApi->cICDServiceUpdateVariable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableId** | **String**|  | [default to null]
 **body** | [**ApiVariable**](ApiVariable.md)|  | 

### Return type

[**ApiUpdateVariableRes**](ApiUpdateVariableRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

