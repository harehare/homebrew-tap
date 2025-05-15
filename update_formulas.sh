#!/bin/bash
# Script to update Homebrew formulas with new SHA256 hashes

set -e

if [ $# -lt 2 ]; then
  echo "Usage: $0 <version> <sha_content_file>"
  echo "Example: $0 0.1.6 sha256_hashes.txt"
  exit 1
fi

VERSION="$1"
SHA_CONTENT_FILE="$2"

if [ ! -f "$SHA_CONTENT_FILE" ]; then
  echo "Error: SHA256 content file '$SHA_CONTENT_FILE' not found."
  exit 1
fi

# Run the Ruby script
ruby "$(dirname "$0")/update_homebrew_formulas.rb" "$VERSION" "$SHA_CONTENT_FILE"

# Check the exit code
if [ $? -eq 0 ]; then
  echo "✅ Formula updates completed successfully."

  # Optional: Show a summary of changes
  echo "Updated formulas:"
  ls -la "$(dirname "$0")/Formula/mq.rb" "$(dirname "$0")/Formula/mq-lsp.rb" "$(dirname "$0")/Formula/mq-mcp.rb"

  echo "Created versioned formulas:"
  ls -la "$(dirname "$0")/Formula/mq@$VERSION.rb" "$(dirname "$0")/Formula/mq-lsp@$VERSION.rb" "$(dirname "$0")/Formula/mq-mcp@$VERSION.rb" 2>/dev/null || echo "No versioned formulas found."
else
  echo "❌ Formula updates failed."
  exit 1
fi
