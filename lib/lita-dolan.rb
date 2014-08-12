require "lita/handlers/dolan"
require "reddit_listings"

DOLANS = RedditListings
  .get("dolan", sort_by: "top", timeframe: "year", total: "100")
  .map { |post| post[:url] }
  .select { |url| url.match(/(jpg|jpeg|png|gif)\z/) }
