sam-local:
	sam build
	sam local start-api

sam-deploy:
	sam build
	sam deploy --no-confirm-changeset --no-fail-on-empty-changeset

sam-delete:
	sam delete --stack-name temp-ogata-sam

iac-cognito-update:
	aws cloudformation update-stack --stack-name ogata-cloudformation-cognito \
	--template-body file://cloudformation/cloudformation-cognito.yml \
	--capabilities CAPABILITY_NAMED_IAM \
