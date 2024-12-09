#!/bin/sh
python /check_flakes.py $* | grep -A 5 'Top 5 flaky tests' > ./top-flaky-tests.txt
# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/workflow-commands-for-github-actions#multiline-strings
echo "report<<EOF"$'\n'"$(cat ./top-flake-test.txt)"$'\n'EOF >> "$GITHUB_OUTPUT"
