namespace: "${NAMESPACE}"
name: "${NAME}"
replicaCount: "${REPLICA_COUNT}"

image:
  repository: "${REGISTRY_SERVER}/${REGISTRY_NAMESPACE}/${IMAGE_REPOSITORY}"
  tag: "${IMAGE_TAG}"
  pullPolicy: Always

imagePullSecrets:
  name: "${IMAGE_PULL_SECRET}"

ingress:
  host: "${INGRESS_HOST}"
  secretName: "${INGRESS_SECRET}"

config:
  app: |
    {
      "http": {
        "port": 80,
        "cors": {
          "allowAll": true
        }
      },
      "grpc": {
        "port": 6080
      },
      "mongo": {
        "uri": "mongodb://localhost:27017",
        "connectTimeout": "3s",
        "pingTimeout": "2s"
      },
      "service": {
        "data": "data"
      },
      "storage": {
        "database": "hatlonely",
        "taskCollection": "task",
        "templateCollection": "template",
        "variableCollection": "variable",
        "sequenceCollection": "sequence",
        "timeout": "3s",
        "jobExpiration": "72h"
      },
      "logger": {
        "grpc": {
          "level": "Info",
          "flatMap": true,
          "writers": [{
            "type": "RotateFile",
            "rotateFileWriter": {
              "filename": "log/${NAME}.rpc",
              "maxAge": "24h",
              "formatter": {
                "type": "Json"
              }
            }
          }, {
            "type": "ElasticSearch",
            "elasticSearchWriter": {
              "index": "grpc",
              "idField": "requestID",
              "timeout": "200ms",
              "msgChanLen": 200,
              "workerNum": 2,
              "elasticSearch": {
                "uri": "http://${ELASTICSEARCH_SERVER}"
              }
            }
          }]
        },
        "info": {
          "level": "Info",
          "writers": [{
            "type": "RotateFile",
            "rotateFileWriter": {
              "filename": "log/${NAME}.rpc",
              "maxAge": "24h",
              "formatter": {
                "type": "Json"
              }
            }
          }]
        }
      }
    }