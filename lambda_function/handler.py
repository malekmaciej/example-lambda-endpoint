import json
from aws_lambda_powertools import Logger
import base64

logger = Logger()

def lambda_handler(event, context):
  if event['isBase64Encoded'] is True:
    body = base64.b64decode(event['body'])  
  else:
    body = event['body']
  ip = event['requestContext']['http']['sourceIp']
  logger.info(body)
  logger.info(ip)
  return {
    'statusCode': 200,
    'body': json.dumps(str(body))
  }