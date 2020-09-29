class InputOutput
  def degrees_input(obj)
    puts('Input value')
    obj.value = gets.to_i
    obj
  end

  def unit_input(obj)
    obj.unit = gets.strip
    if (obj.unit != 'C') && (obj.unit != 'F') && (obj.unit != 'K')
      obj.unit = ''
      puts('Error')
      return -1
    end
    obj.unit_convert = gets.strip
    if (obj.unit_convert != 'C') && (obj.unit_convert != 'F') && (obj.unit_convert != 'K')
      obj.unit_convert = ''
      puts('Error')
      return -1
    end
    obj
  end

  def info_print(obj)
    print('new value = ' + obj.value.to_s + "\n")
  end
end
