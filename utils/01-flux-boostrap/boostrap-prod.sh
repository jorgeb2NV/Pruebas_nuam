#!/bin/bash

flux bootstrap github --owner=nuamx --repository=$repository_xac --branch=production --token-auth --path=/env/production
