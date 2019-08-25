# aqha-example-deploy
A set of artifacts for Ansible to deploy configuration to a pre-baked AMI of aqha-example-web-app-role
A set of artifacts for chef-solo to deploy configuration to a pre-baked AMI of aqha-example-web-app-cookbook

## Instructions for Ansible
### NOTE:  This is to be used to provide the aqha-ansible-bootstrap systemd unit the artifacts required to run Ansible at instance startup and configure the AWS instance for the environment it is being deployed to.
1. Create tar.gz of the contents under the `ansible` directory (not inclusive of parent)
   1.  for example `cd staging/ansible && tar zcvf config.tar.gz *`
1. Upload the tar.gz file to an S3 bucket
1. Provide a JSON string to user-data for instance startup that includes the keys `bucket` and `key` and their respective values of bucket name and object key.  For example:
    `{"bucket": "ansible-bootstrap-bucket","key": "config.tar.gz"}`

## Instructions for Chef Solo
### NOTE:  This is to be used to provide the aqha-chef-solo-bootstrap systemd unit the artifacts required to run chef-solo at instance startup and configure the AWS instance for the environment it is being deployed to.
1. Create tar.gz of the contents under the `chef` directory (not inclusive of parent)
   1.  for example `cd staging/chef && tar zcvf config.tar.gz *`
1. Upload the tar.gz file to an S3 bucket
1. Provide a JSON string to user-data for instance startup that includes the keys `bucket` and `key` and their respective values of bucket name and object key.  For example:
    `{"bucket": "chef-bootstrap-bucket","key": "config.tar.gz"}`
