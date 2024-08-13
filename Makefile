iac-base-deploy:
	aws cloudformation create-stack --stack-name ogata-cloudformation-base \
	--template-body file://cloudformation/cloudformation-base.yml \
	--capabilities CAPABILITY_NAMED_IAM \
	--parameters ParameterKey=GithubRepository,ParameterValue=$(GITHUB_REPOSITORY) \

iac-base-update:
	aws cloudformation update-stack --stack-name ogata-cloudformation-base \
	--template-body file://cloudformation/cloudformation-base.yml \
	--capabilities CAPABILITY_NAMED_IAM \
	--parameters ParameterKey=GithubRepository,ParameterValue=$(GITHUB_REPOSITORY) \