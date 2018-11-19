# aqha-example-deploy
A set of artifacts for chef-solo to deploy configuration to a pre-baked AMI of aqha-example-web-app

## Instructions
### NOTE:  This is to be used to provide the aqha-chef-solo-bootstrap systemd unit the artifacts required to run chef-solo at instance startup and configure the AWS instance for the environment it is being deployed to.
1. Run `berks vendor chef/cookbooks` to download all cookbooks to local directory
1. Create tar.gz of the contents under the `chef` directory (not inclusive of parent)
   1.  for example `cd chef && tar zcvf config.tar.gz *`
1. Upload the tar.gz file to an S3 bucket
1. Provide a JSON string to user-data for instance startup that includes the keys `bucket` and `key` and their respective values of bucket name and object key.  For example:
    `{"bucket": "chef-bootstrap-bucket","key": "config.tar.gz"}`
