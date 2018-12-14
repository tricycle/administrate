require "administrate/field/url"

describe Administrate::Field::Url do
  describe "#to_partial_path" do
    it "returns a partial based on the page being rendered" do
      page = :show
      field = Administrate::Field::Url.new(:url, "https://thoughtbot.com", page)

      path = field.to_partial_path

      expect(path).to eq("/fields/url/#{page}")
    end
  end
end
