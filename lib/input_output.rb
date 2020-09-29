class InputOutput
  def degrees_input(obj)
    puts('Input value')
    obj.value = gets.to_i
    obj
  end

  def unit_input(obj)
    obj.unit = gets.strip
    obj.unit_convert = gets.strip
    if ((obj.unit || obj.unit_convert) != 'C') && ((obj.unit || obj.unit_convert) != 'F') \
      && ((obj.unit || obj.unit_convert) != 'K')
      obj.unit = ''
      puts('Error')
      return -1
    end
    obj
  end

  def info_print(obj)
    puts obj
  end
end
