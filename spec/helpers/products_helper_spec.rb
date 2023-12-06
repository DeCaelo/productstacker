require "rails_helper"

RSpec.describe ProductsHelper, type: :helper do
  describe "extract asin from amazon url" do
    context "url from amazon is correct" do
      it "url is correct" do
        amazon_url = "https://www.amazon.fr/Comandante-C40-Moulin-caf%C3%A9-walnuss/dp/B09X2Y1T5B/"

        expect(helper.extract_asin_from_amazon_url(amazon_url)).to eq("B09X2Y1T5B")
      end
    end

    context "url from amazon is incorrect" do
      it "url is not correct" do
        amazon_url = "https://www.amazon.fr/Comandante-C40-Moulin-caf%C3%A9-walnuss/dp/B09X2Y1T5B/"

        expect(helper.extract_asin_from_amazon_url(amazon_url)).not_to eq("B07ABC1234")
      end
    end
  end
end
