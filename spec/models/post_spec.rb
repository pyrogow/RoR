# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_least(3).with_message('should be at least 3 characters') }
  end

  describe 'relations' do
    it { should belong_to(:user) }
  end

  it('has a valid factory') { expect(build(:post)).to be_valid }
end
