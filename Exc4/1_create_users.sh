#!/bin/bash

kubectl create serviceaccount reader -n default
kubectl create serviceaccount developer -n default
kubectl create serviceaccount secrets-manager -n default

kubectl create token reader -n default
kubectl create token developer -n default
kubectl create token secrets-manager -n default