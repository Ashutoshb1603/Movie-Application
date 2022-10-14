require "test_helper"

class CountryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'valid country' do
    country = Country.new(country_name: "abc", country_iso_code: 5632)
    assert country.valid?
  end
end
