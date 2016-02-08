require 'rails_helper'

describe Team do

  let(:team) { create(:team) }

  describe 'has associations for' do

    it 'an owner' do
      expect { team.owner }.to_not raise_error
    end


    it 'many members' do
      expect { team.members }.to_not raise_error
    end


    it 'many progress reports' do
      expect { team.progress_reports }.to_not raise_error
    end
  end
end

