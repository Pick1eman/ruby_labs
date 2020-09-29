require './lib/main'

RSpec.describe Data_ do
  describe '#Converts' do
    it 'Convert from C to F' do
    	a = Data_.new
    	a.value = (15)
    	a.unit = ('C')
    	a.unit_convert = ('F')
    	conversion = DegreesConversion.new
    	a = conversion.check_units(a)
      expect(a.value).to eq 59
    end
    it 'Convert from C to F 2' do
    	a = Data_.new
    	a.value = (-38)
    	a.unit = ('C')
    	a.unit_convert = ('F')
    	conversion = DegreesConversion.new
    	a = conversion.check_units(a)
      expect(a.value.round(2)).to eq -36.4
    end
    it 'Convert from C to K' do
    	a = Data_.new
    	a.value = (15)
    	a.unit = ('C')
    	a.unit_convert = ('K')
    	conversion = DegreesConversion.new
    	a = conversion.check_units(a)
      expect(a.value).to eq 288.15
    end
    it 'Convert from C to K 2' do
    	a = Data_.new
    	a.value = (-852)
    	a.unit = ('C')
    	a.unit_convert = ('K')
    	conversion = DegreesConversion.new
    	a = conversion.check_units(a)
      expect(a.value).to eq -578.85
    end
    it 'Convert from F to C' do
    	a = Data_.new
    	a.value = (15)
    	a.unit = ('F')
    	a.unit_convert = ('C')
    	conversion = DegreesConversion.new
    	a = conversion.check_units(a)
      expect(a.value).to eq -10
    end
    it 'Convert from F to C 2' do
    	a = Data_.new
    	a.value = (-15)
    	a.unit = ('F')
    	a.unit_convert = ('C')
    	conversion = DegreesConversion.new
    	a = conversion.check_units(a)
      expect(a.value).to eq -27
    end
    it 'Convert from K to C' do
    	a = Data_.new
    	a.value = (15)
    	a.unit = ('K')
    	a.unit_convert = ('C')
    	conversion = DegreesConversion.new
    	a = conversion.check_units(a)
      expect(a.value).to eq -258.15
    end
    it 'Convert from F to K' do
    	a = Data_.new
    	a.value = (10)
    	a.unit = ('F')
    	a.unit_convert = ('K')
    	conversion = DegreesConversion.new
    	a = conversion.check_units(a)
      expect(a.value).to eq 260.15
    end
  end
end
