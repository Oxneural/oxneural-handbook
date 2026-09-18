#!/usr/bin/env bash
# OxNeural claims guard.
#
# Fails if unsupported marketing language appears in documentation.
#
# Two escape hatches, both deliberate and auditable:
#   1. A line carrying the marker  <!-- claims-ok -->  is allowed.
#      Use it where the phrase is quoted, negated or explicitly qualified.
#   2. A path listed in .github/claims-allowlist.txt is skipped entirely.
#      Use it for documents whose subject IS the prohibited wording.
#
# Everything else fails the build. That is the point.

set -uo pipefail

TERMS='enterprise-grade|world-class|industry-leading|best-in-class|cutting-edge|state-of-the-art|24/7|military-grade|bank-grade|unhackable|fully automated|zero false positives|hundreds of clients|millions of users'

ALLOWLIST=".github/claims-allowlist.txt"
skip_args=()
if [[ -f "$ALLOWLIST" ]]; then
  while IFS= read -r line; do
    line="${line%%#*}"; line="$(echo "$line" | xargs)"
    [[ -z "$line" ]] && continue
    skip_args+=(":(exclude)$line")
  done < "$ALLOWLIST"
fi

mapfile -t files < <(git ls-files '*.md' "${skip_args[@]}")
if [[ ${#files[@]} -eq 0 ]]; then
  echo "No markdown files to check."; exit 0
fi

hits=0
for f in "${files[@]}"; do
  while IFS= read -r hit; do
    [[ "$hit" == *"<!-- claims-ok"* ]] && continue
    echo "::error file=${f},line=${hit%%:*}::unsupported claim wording: ${hit#*:}"
    hits=$((hits+1))
  done < <(grep -nEi "$TERMS" "$f" || true)
done

if [[ $hits -gt 0 ]]; then
  echo
  echo "Claims guard failed: $hits line(s)."
  echo "Either remove the wording, qualify it and add <!-- claims-ok --> to the line,"
  echo "or add the file to $ALLOWLIST with a reason."
  exit 1
fi

echo "Claims guard passed: ${#files[@]} file(s) checked, no unsupported wording."
