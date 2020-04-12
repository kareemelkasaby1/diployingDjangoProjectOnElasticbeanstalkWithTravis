provider "aws" {
  region                  = "us-west-2"
  shared_credentials_file = "~/.aws/creds"
  profile                 = "awsCredForTerrafom"
}