init: 
	docker compose run --rm -w /infra terraform init 
# if this is not defined the make commands will fail

plan:
	docker compose run --rm -w /infra terraform plan 
# we should leave a tab here, not spaces
# terraform files should exist in root directory now

# this will run in root directory of the project, so we need to specify the path to the terraform files


apply:
	docker compose run --rm -w /infra terraform apply -auto-approve

#docker run --rm \
#   -v $(pwd):/infra \
#   -w /infra \
#   -e ARM_CLIENT_ID=$ARM_CLIENT_ID \
#   hashicorp/terraform \
#   terraform plan

# if dockercompose not used we can use the above command to run terraform commands in docker container, we need to set the environment variable for ARM_CLIENT_ID and other variables as well