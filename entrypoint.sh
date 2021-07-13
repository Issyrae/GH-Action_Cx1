#!/bin/bash

eval "arr=(${ADDITIONAL_PARAMS})"

exec 5>&1
cxscan="$(/app/bin/cx scan create -v --scan-types "${SCAN_TYPES}" --project-name "${PROJECT_NAME}" -s "." --filter "${FILTER}" --branch "${BRANCH#refs/heads/}" --format json --agent "Github Action" "${arr[@]}" | tee >(cat - >&5))"
#cxscan="${cxscan//'%'/'%25'}"
#cxscan="${cxscan//$'\n'/'%0A'}"
#cxscan="${cxscan//$'\r'/'%0D'}"
#echo "::set-output name=cxcli::$cxscan"
#value="Failed"
#if [[ $cxscan =~ .*"$value"*. ]]; then
#  echo "Scan Failed"
#  exit 1
#fi
echo $?
value=$?
if [ $value -eq 0 ]
then
  echo "Scan completed"
fi
exit $value
