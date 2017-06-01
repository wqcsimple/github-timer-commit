#!/bin/sh

DATE=`date '+%Y-%m-%d'`
TIME=`date '+%H:%M:%S'`

COMMIT_TIME=${DATE}" "${TIME}

echo "${COMMIT_TIME} commit \r\n" >> ./README.MD

branch_list=$(git branch | grep '*')
current_branch=${branch_list:2}

git status && git add -A && git commit -m "${COMMIT_TIME} commit" && git push origin ${current_branch}