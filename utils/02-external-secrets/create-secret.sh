#!/bin/bash

# Function to validate that input is not empty
validate_non_empty() {
  local input=$1
  if [[ -z "$input" ]]; then
    return 1 # Invalid (empty)
  else
    return 0 # Valid (non-empty)
  fi
}

# Print the welcome message
echo -e "=================================================\n"
echo -e "Create secret - Token of Vault \n"
echo -e "=================================================\n"


# Prompt for password (input hidden)
while true; do
  read -s -p "Enter your token of vault: " password
  echo
  # Validate password
  if validate_non_empty "$password"; then
    break
  else
    echo "Password cannot be empty."
  fi
done

echo -e "\n"


D_ORI=.
D_TMP=/tmp/tok-v.yaml

export TOKEN_B64=$(echo -n "$password" | base64 -w 0)

envsubst < $D_ORI/vault-token.yaml > $D_TMP

kubectl create ns external-secrets
kubectl apply -f $D_TMP

rm -rf $D_TMP
