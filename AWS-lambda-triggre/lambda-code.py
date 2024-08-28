import json
import boto3
import os

def lambda_handler(event, context):
    # Initialize the S3 and SES clients
    s3 = boto3.client('s3')
    ses = boto3.client('ses')
    
    # Extract bucket name and object key from the event
    bucket_name = event['Records'][0]['s3']['bucket']['name']
    object_key = event['Records'][0]['s3']['object']['key']
    
    # Email parameters
    sender = "sender@example.com"  # Replace with your verified SES email
    recipient = "recipient@example.com"  # Replace with your recipient email
    subject = f"New file uploaded to S3: {object_key}"
    body_text = (f"Hello,\n\n"
                 f"A new file has been uploaded to your S3 bucket:\n\n"
                 f"Bucket: {bucket_name}\n"
                 f"File: {object_key}\n\n"
                 f"Best regards,\n"
                 f"Your Lambda Function")
    
    # Send the email using SES
    try:
        response = ses.send_email(
            Source=sender,
            Destination={
                'ToAddresses': [
                    recipient,
                ],
            },
            Message={
                'Subject': {
                    'Data': subject,
                    'Charset': 'UTF-8'
                },
                'Body': {
                    'Text': {
                        'Data': body_text,
                        'Charset': 'UTF-8'
                    }
                }
            }
        )
        print(f"Email sent! Message ID: {response['MessageId']}")
    except Exception as e:
        print(f"Error sending email: {str(e)}")
        raise e

    return {
        'statusCode': 200,
        'body': json.dumps('Lambda function executed successfully!')
    }

