require 'rails_helper'

RSpec.describe Post, :type => :model do
  include RSpecHtmlMatchers
  it "is not valid without a title"
  it "is not valid without a body"
  describe "Checking for empty form" do
    expect(rendered).to have_tag('div')
  end
end

# require 'spec_helper'
describe "my view spec" do
  include RSpecHtmlMatchers

  it "has tags" do
    expect(rendered).to have_tag('div')
  end
end