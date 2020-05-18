#!/bin/bash -l

# Exit with a error status in case of command error.
set -e

# Read the parameters.
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --version) version="$2"; shift ;;
        --config) config="$2"; shift ;;
        --path) path="$2"; shift ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

# Download the release.
curl --silent --show-error -L -o markdown-link-check.tar.gz "https://github.com/Nitro/markdown-link-check/releases/download/${version}/markdown-link-check_${version}_linux_amd64.tar.gz"

# Uncompress.
tar xf markdown-link-check.tar.gz

# Move the binary to '/usr/bin'.
mv "markdown-link-check_${version}_linux_amd64/markdown-link-check" /usr/bin/

# Remove the temporary files.
rm -Rf markdown-link-check*

# Excute the command.
markdown-link-check --config "$config" "$path"