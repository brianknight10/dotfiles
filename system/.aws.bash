# AWS CLI tool locations

export JAVA_HOME="$(/usr/libexec/java_home)"
export AWS_CLOUDWATCH_HOME="$HOME/bin/cloudwatch"

# AWS Path Changes

export PATH=$PATH:$AWS_CLOUDWATCH_HOME/bin

# AWS Credentials

export AWS_CREDENTIAL_FILE="$HOME/.aws/credentials"