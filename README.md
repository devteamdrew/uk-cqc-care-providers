# CQC Care Homes & Providers Scraper – UK Care Directory Leads

Export CQC-registered care homes, nursing homes, home care agencies, GP surgeries, dentists and clinics in England with phone number, website, address, services, specialisms, CQC rating (overall + safe/effective/caring/responsive/well-led) and date of last check. Filter by service type, region, council, postcode or minimum rating. Official CQC data, no key. Pay per result.

**[Run it on Apify →](https://apify.com/devteamdrew/uk-cqc-care-providers?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=hero)** (pay per result, free Apify account to start)


**CQC Care Providers Scraper** by Moxie: fast, reliable and polite, built on official/public data sources.

## What can it do?

- Lead generation for suppliers to care homes: food, PPE, staffing agencies, care software, maintenance
- Recruitment and staffing agencies targeting home care and nursing providers
- Market mapping of care home groups by region and council
- Due diligence and M&A research on care providers

## Data source

The official CQC care directory published by the Care Quality Commission (`cqc.org.uk`, updated regularly) under the Open Government Licence v3.0. The actor always picks up the latest published file. No login, no API key.

## Features

- **Pay only for results** (pay-per-event pricing, no monthly rental)
- **Incremental mode**: scheduled runs return only items you haven't received before
- **LLM-ready output**: optional compact Markdown per item for RAG / AI agents
- **Polite rate limiting** with automatic retries and backoff
- Clean, flat JSON you can export as CSV, Excel, JSON or via API


## Quick start

1. Create a free account at [apify.com](https://apify.com/devteamdrew/uk-cqc-care-providers?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=quickstart) and copy your API token.
2. `export APIFY_TOKEN=...`
3. Run one of the examples:

```bash
bash examples/run.sh          # curl
node examples/run.js          # JavaScript (apify-client)
python examples/run.py        # Python (apify-client)
```

Example input ([examples/input.json](examples/input.json)):

```json
{
  "serviceTypes": [
    "Residential homes",
    "Nursing homes"
  ],
  "regions": [
    "North West"
  ],
  "requirePhone": true,
  "maxItems": 20
}
```

## FAQ

**Which services are covered?**
Everything registered with CQC in England: care homes, nursing homes, home care, supported living, GPs, dentists, clinics, hospitals and more.

**Does it include CQC ratings?**
Yes. By default each location gets `overallRating`, `ratingSafe`, `ratingEffective`, `ratingCaring`, `ratingResponsive`, `ratingWellLed` and `ratingPublishedDate` from CQC's monthly Latest ratings file (`ratingsDate` shows its version). Filter with `minRating` (e.g. Good = Good or Outstanding) or `onlyRated`. Locations that have never been rated have null ratings.

**Why do some ratings say Not applicable or Not rated?**
Those values come straight from CQC, e.g. locations offering several service types no longer get a single location-level rating under CQC's newer approach.

**How fresh is it?**
CQC republishes the directory regularly and the ratings file monthly; `directoryDate` and `ratingsDate` show the versions used.

## Use with AI agents (MCP)

Add `https://mcp.apify.com/?actors=devteamdrew/uk-cqc-care-providers` as an MCP server in Claude, Cursor or any MCP client.

## Pricing

See the [Apify Store page](https://apify.com/devteamdrew/uk-cqc-care-providers?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=pricing) for current pay-per-result pricing.

## Sample data

Browse real sample rows, download a free CSV sample and see ready-made feeds at [rowsift.co.uk](https://rowsift.co.uk/care-providers/?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=sample-data).

## More data actors

- [Bluesky Scraper – Posts, Profiles & Search](https://apify.com/devteamdrew/bluesky-scraper?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=more)
- [UK Companies House Scraper – Companies & Directors](https://apify.com/devteamdrew/companies-house-scraper?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=more)
- [UK Planning Applications Scraper – 400+ Councils & Postcodes](https://apify.com/devteamdrew/uk-planning-applications?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=more)
- [Hacker News Scraper – Stories, Comments & Jobs](https://apify.com/devteamdrew/hacker-news-scraper?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=more)
- [npm Package Scraper – Downloads & Dependencies](https://apify.com/devteamdrew/npm-package-scraper?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=more)
- [GitHub Trending Scraper – Repos, Stars & Developers](https://apify.com/devteamdrew/github-trending-scraper?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=more)
- [Mastodon Scraper – Fediverse Hashtags, Accounts & Trends](https://apify.com/devteamdrew/mastodon-scraper?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=more)
- [Lemmy Scraper – Posts, Comments & Communities (Fediverse)](https://apify.com/devteamdrew/lemmy-scraper?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=more)
- [SEC EDGAR Scraper – 10-K, 10-Q & 8-K Filings](https://apify.com/devteamdrew/sec-edgar-scraper?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=more)
- [arXiv Scraper – Paper Search, Abstracts & Authors](https://apify.com/devteamdrew/arxiv-scraper?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=more)
- [UK Public Tenders Scraper – Contracts Finder & Find a Tender](https://apify.com/devteamdrew/uk-public-tenders?utm_source=github&utm_medium=readme&utm_campaign=uk-cqc-care-providers&utm_content=more)

## License

Examples in this repository are MIT licensed. The actor itself runs on the Apify platform.
