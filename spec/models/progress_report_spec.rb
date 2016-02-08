require 'rails_helper'

describe ProgressReport do

  let(:progress_report) { create(:progress_report) }

  describe 'has associations for' do

    it 'an author' do
      expect { progress_report.author }.to_not raise_error
    end


    it 'a team' do
      expect { progress_report.team }.to_not raise_error
    end
  end
end



