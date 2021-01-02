part of openapi.api;

class SubTaskScriptSubTask {
  
  String language = null;
  
  String script = null;
  SubTaskScriptSubTask();

  @override
  String toString() {
    return 'SubTaskScriptSubTask[language=$language, script=$script, ]';
  }

  SubTaskScriptSubTask.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    language = json['language'];
    script = json['script'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (language != null)
      json['language'] = language;
    if (script != null)
      json['script'] = script;
    return json;
  }

  static List<SubTaskScriptSubTask> listFromJson(List<dynamic> json) {
    return json == null ? List<SubTaskScriptSubTask>() : json.map((value) => SubTaskScriptSubTask.fromJson(value)).toList();
  }

  static Map<String, SubTaskScriptSubTask> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubTaskScriptSubTask>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubTaskScriptSubTask.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SubTaskScriptSubTask-objects as value to a dart map
  static Map<String, List<SubTaskScriptSubTask>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SubTaskScriptSubTask>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SubTaskScriptSubTask.listFromJson(value);
       });
     }
     return map;
  }
}

