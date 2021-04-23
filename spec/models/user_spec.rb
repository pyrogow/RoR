# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it('has valid factory') { expect(build(:user)).to be_valid }
  it { should have_secure_password }

  describe 'relations' do
    it('has many posts') { should have_many(:posts) }
  end

  describe 'validations' do
    it('validates a presence of name') { should validate_presence_of(:name) }
    it('validates a uniqueness of email') { should validate_uniqueness_of(:email).case_insensitive }
    it('validates a presence of password') { should validate_presence_of(:password) }
    it('validates min length of password') { should validate_length_of(:password).is_at_least(6) }

    describe 'email format' do
      it { should allow_value('email@addresse.foo').for(:email) }
      it { should_not allow_value('email@addresse').for(:email) }
      it { should_not allow_value('foo').for(:email) }
    end
  end
end
