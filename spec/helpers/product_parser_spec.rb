require 'rails_helper'

RSpec.describe ProductParser, type: :helper do
  include Devise::Test::IntegrationHelpers

  before(:each) do
    user = create(:user)
    sign_in user
    @amazon_url = 'https://www.amazon.fr/Essential-Jatamansi-Essentielle-Huile-0-507oz/dp/B0777QVLXV/'
  end

  describe '#parse_doc' do
    it 'returns an instance of Nokogiri::HTML::Document' do
      doc = ProductParser.parse_doc(@amazon_url)
      expect(doc).to be_an_instance_of(Nokogiri::HTML::Document)
    end
  end

  describe 'Amazon' do
    describe '.get_attributes' do
      it 'returns attributes including title, description, price, brand, thumbnail, and asin' do
        attributes = ProductParser::Amazon.get_attributes(@amazon_url)

        expect(attributes[:title]).to_not be_nil
        expect(attributes[:description]).to_not be_nil
        expect(attributes[:price]).to_not be_nil
        expect(attributes[:brand]).to_not be_nil
        expect(attributes[:thumbnail]).to_not be_nil
        expect(attributes[:asin]).to_not be_nil
      end
    end
  end
end
