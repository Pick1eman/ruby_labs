class Data_
  def initialize
    @value = 0
    @unit = ''
    @unit_convert = ''
  end

  attr_accessor :value, :unit, :unit_convert
  attr_writer :value, :unit, :unit_convert
end
