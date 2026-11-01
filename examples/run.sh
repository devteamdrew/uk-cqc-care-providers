#!/usr/bin/env bash
# Run the actor and print results. Needs an Apify API token in $APIFY_TOKEN (free account at apify.com).
curl -s -X POST "https://api.apify.com/v2/acts/devteamdrew~uk-cqc-care-providers/run-sync-get-dataset-items?token=$APIFY_TOKEN" \
  -H 'Content-Type: application/json' -d @"$(dirname "$0")/input.json"
