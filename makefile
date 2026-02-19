init: 
	terraform init 
# if this is not defined the make commands will fail

plan:
	terraform plan 
# we should leave a tab here, not spaces

# this will run in root directory of the project, so we need to specify the path to the terraform files
workdir:./terraform 