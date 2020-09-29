class DegreesConversion
  def check_units(obj)
    if (obj.unit == 'C') && (obj.unit_convert == 'F')
      obj = convert_from_c_to_f(obj)
    elsif (obj.unit == 'C') && (obj.unit_convert == 'K')
      obj = convert_from_c_to_k(obj)
    elsif (obj.unit == 'F') && (obj.unit_convert == 'K')
      obj = convert_from_f_to_k(obj)
    elsif (obj.unit == 'F') && (obj.unit_convert == 'C')
      obj = convert_from_f_to_c(obj)
    elsif (obj.unit == 'K') && (obj.unit_convert == 'F')
      obj = convert_from_k_to_f(obj)
    elsif (obj.unit == 'K') && (obj.unit_convert == 'C')
      obj = convert_from_k_to_c(obj)
    end
    obj
  end

  def convert_from_c_to_f(obj)
    obj.value = (obj.value * 1.8 + 32)
    obj
  end

  def convert_from_c_to_k(obj)
    obj.value = (obj.value + 273.15)
    obj
  end

  def convert_from_f_to_c(obj)
    obj.value = (5 * (obj.value - 32) / 9)
    obj
  end

  def convert_from_f_to_k(obj)
    obj.value = (5 * (obj.value - 32) / 9 + 273.15)
    obj
  end

  def convert_from_k_to_c(obj)
    obj.value = (obj.value - 273.15)
    obj
  end

  def convert_from_k_to_f(obj)
    obj.value = ((obj.value - 273.15) * 1.8 + 32)
    obj
  end
end
