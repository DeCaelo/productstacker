module ProductsHelper
  def extract_asin_from_amazon_url(url)
    url.match(%r{/dp/([A-Z0-9]+)})&.captures&.first
  end
end
