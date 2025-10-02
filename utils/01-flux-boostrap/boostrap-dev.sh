#!/bin/bash

flux bootstrap github --owner=nuamx --repository=$repository_xac  --branch=main --token-auth --path=/env/development

