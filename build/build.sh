#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Print commands and their arguments as they are executed
set -x

# Ensure we're in the project directory
cd "$(dirname "$0")"

# Clean previous builds
rm -rf node_modules
rm -rf dist

# Install dependencies
npm install

# Run linting (if you have a lint script)
npm run lint

# Run tests
npm test

# Build the project
npm run build

# Optional: generate documentation or additional artifacts
# npm run docs

echo "Build completed successfully!"
