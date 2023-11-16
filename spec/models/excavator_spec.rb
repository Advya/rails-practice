require 'rails_helper'

RSpec.describe Excavator, type: :model do
  context 'validations' do
    subject { build(:excavator) }

    it { is_expected.to validate_presence_of(:company_name) }
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:crew_on_site) }
  end
end
