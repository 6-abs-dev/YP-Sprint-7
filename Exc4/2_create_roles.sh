#!/bin/bash

kubectl create clusterrole cluster-reader \
  --verb=get,list,watch \
  --resource=pods,services

kubectl create clusterrole cluster-developer \
    --verb=get,list,create,update,patch,delete \
    --resource=pods,services

kubectl create clusterrole cluster-secrets-manager \
  --verb=get,list,create,update,patch,delete \
  --resource=secrets

