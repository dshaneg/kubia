#!/bin/sh

if [ -z ${PROXY_PORT} ]; then
    echo "Proxy port defaulting to 8001. Set PROXY_PORT environment variable to override."
    PROXY_PORT=8001
fi

API_SERVER="https://${KUBERNETES_SERVICE_HOST}:${KUBERNETES_SERVICE_PORT}"
CA_CRT="/var/run/secrets/kubernetes.io/serviceaccount/ca.crt"
TOKEN="$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)"

/kubectl proxy --server="${API_SERVER}" --certificate-authority="${CA_CRT}" --token="${TOKEN}" --accept-paths='^.*' --port=${PROXY_PORT}
