# pip install apify-client
import json, os
from apify_client import ApifyClient

client = ApifyClient(os.environ["APIFY_TOKEN"])
run = client.actor("devteamdrew/uk-cqc-care-providers").call(run_input=json.load(open(os.path.join(os.path.dirname(__file__), "input.json"))))
for item in client.dataset(run["defaultDatasetId"]).iterate_items():
    print(item)
