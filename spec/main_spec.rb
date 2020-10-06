require './lib/analysis'
require 'csv'

RSpec.describe Analysis do
  describe 'calc' do
    context 'max' do
      it { expect(Analysis.new.search_min_in_matrix(CSV.read('resources/data.csv')).to_f.round(2)).to eq 98.2 }
    end
    context 'min' do
      it { expect(Analysis.new.search_max_in_matrix(CSV.read('resources/data.csv')).to_f.round(2)).to eq 120 }
    end
    context 'avg' do
      it { expect(Analysis.new.average(CSV.read('resources/data.csv')).to_f.round(2)).to eq 101.26 }
    end
    context 'var' do
      it { expect(Analysis.new.variance(CSV.read('resources/data.csv')).to_f.round(2)).to eq 1.81 }
    end
  end
end