load 'lib/data_temperature.rb'
load 'lib/degrees_conversion.rb'
load 'lib/input_output.rb'

data = DataTemperature.new
input = InputOutput.new
data = input.degrees_input(data)
data = input.unit_input(data)
conversion = DegreesConversion.new
data_value = conversion.check_units(data)
output = InputOutput.new
output.info_print(data_value)