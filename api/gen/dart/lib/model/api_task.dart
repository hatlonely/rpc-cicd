part of openapi.api;

class ApiTask {
  
  String id = null;
  
  String name = null;
  
  String description = null;
  
  List<String> subTaskIDs = [];
  
  List<String> variableIDs = [];
  
  List<TaskEnvironment> environments = [];
  
  int createAt = null;
  
  int updateAt = null;
  ApiTask();

  @override
  String toString() {
    return 'ApiTask[id=$id, name=$name, description=$description, subTaskIDs=$subTaskIDs, variableIDs=$variableIDs, environments=$environments, createAt=$createAt, updateAt=$updateAt, ]';
  }

  ApiTask.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    description = json['description'];
    subTaskIDs = (json['subTaskIDs'] == null) ?
      null :
      (json['subTaskIDs'] as List).cast<String>();
    variableIDs = (json['variableIDs'] == null) ?
      null :
      (json['variableIDs'] as List).cast<String>();
    environments = (json['environments'] == null) ?
      null :
      TaskEnvironment.listFromJson(json['environments']);
    createAt = json['createAt'];
    updateAt = json['updateAt'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (description != null)
      json['description'] = description;
    if (subTaskIDs != null)
      json['subTaskIDs'] = subTaskIDs;
    if (variableIDs != null)
      json['variableIDs'] = variableIDs;
    if (environments != null)
      json['environments'] = environments;
    if (createAt != null)
      json['createAt'] = createAt;
    if (updateAt != null)
      json['updateAt'] = updateAt;
    return json;
  }

  static List<ApiTask> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiTask>() : json.map((value) => ApiTask.fromJson(value)).toList();
  }

  static Map<String, ApiTask> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApiTask>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiTask.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiTask-objects as value to a dart map
  static Map<String, List<ApiTask>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ApiTask>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ApiTask.listFromJson(value);
       });
     }
     return map;
  }
}

