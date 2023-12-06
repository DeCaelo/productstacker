module ProductsHelper
  def extract_asin_from_amazon_url(url)
    url.match(%r{dp/([^/]+)/})&.captures&.first
  end
end
