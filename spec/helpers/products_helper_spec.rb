require "rails_helper"

RSpec.describe ProductsHelper, type: :helper do
  describe "extract asin from amazon url" do
    context "url from amazon is correct" do
      it "url is correct" do
        amazon_url1 = "https://www.amazon.fr/Essential-Jatamansi-Essentielle-Huile-0-507oz/dp/B0777QVLXV?source=ps-sl-shoppingads-lpcontext&ref_=fplfs&smid=A3PUPRHWU3OHL2&th=1"

        expect(helper.extract_asin_from_amazon_url(amazon_url1)).to eq("B0777QVLXV")
      end
    end

    context "url from amazon is correct" do
      it "url is correct" do

        amazon_url2 = "https://www.amazon.fr/Essential-Ginger-essentielles-Huile-0-338oz/dp/B0777P3C5V/ref=sr_1_7?keywords=R+V+Essential&qid=1701934380&sr=8-7"

        expect(helper.extract_asin_from_amazon_url(amazon_url2)).to eq("B0777P3C5V")
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
