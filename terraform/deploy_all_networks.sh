#!/bin/bash

network=goerli

environment=staging
export TF_WORKSPACE=blobscan-$environment-goerli
TF_VAR_env=$environment TF_VAR_network=$network TF_VAR_database_size=db-s-2vcpu-4gb terraform apply

environment=prod
export TF_WORKSPACE=blobscan-$network-$environment
TF_VAR_env=$environment TF_VAR_network=$network terraform apply

network=holesky

environment=prod
export TF_WORKSPACE=blobscan-$network-$environment
TF_VAR_env=$environment TF_VAR_network=$network terraform apply

network=sepolia

environment=prod
export TF_WORKSPACE=blobscan-$network-$environment
TF_VAR_env=$environment TF_VAR_network=$network terraform apply