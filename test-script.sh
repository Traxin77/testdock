#!/bin/bash
echo "Hello from the enhanced Dockerized Test Repo!"
echo "Checking internet connectivity..."
curl -Is https://www.google.com | head -n 1
echo "Script execution completed."
