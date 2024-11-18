#!/bin/bash

kubectl create clusterrolebinding reader-read \
  --clusterrole=cluster-reader \
  --serviceaccount=default:reader

kubectl create clusterrolebinding developer-edit \
  --clusterrole=cluster-developer \
  --serviceaccount=default:developer

kubectl create clusterrolebinding admin-secrets-manager \
  --clusterrole=cluster-secrets-manager \
  --serviceaccount=default:secrets-manager