#!/bin/bash

echo "Uploading test report to ${REPO_OWNER}/${REPO_NAME} using Github User ${GITHUB_USERNAME}"
mvn site -q \
  -DTRAVIS=${TRAVIS} \
  -DTRAVIS_JOB_NUMBER=${TRAVIS_JOB_NUMBER} \
  -DTRAVIS_TEST_RESULT=${TRAVIS_TEST_RESULT} \
  -DGITHUB_TOKEN=${GITHUB_TOKEN} \
  -DREPO_NAME=${REPO_NAME} \
  -DREPO_OWNER=${REPO_OWNER} \
  -DGITHUB_USERNAME=${GITHUB_USERNAME} \
  -DCONSENSUS=${TF_VAR_consensus_mechanism}