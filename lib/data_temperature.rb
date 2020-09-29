class DataTemperature
  attr_accessor :value, :unit, :unit_convert

  def initialize
    @value = 0
    @unit = ''
    @unit_convert = ''
  end
end
