require 'rails_helper'

describe Employee do

  let(:employee) { create(:employee) }

  describe 'has associations for' do

    it 'many teams' do
      expect { employee.teams }.to_not raise_error
    end


    it 'many owned teams' do
      expect { employee.owned_teams }.to_not raise_error
    end


    it 'many progress reports' do
      expect { employee.progress_reports }.to_not raise_error
    end
  end
end

