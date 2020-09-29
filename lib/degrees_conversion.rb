class DegreesConversion
  def check_units(obj)
    if (obj.unit == 'C') && (obj.unit_convert == 'F')
      obj = convert_from_C_to_F(obj)
    elsif (obj.unit == 'C') && (obj.unit_convert == 'K')
      obj = convert_from_C_to_K(obj)
    elsif (obj.unit == 'F') && (obj.unit_convert == 'K')
      obj = convert_from_F_to_K(obj)
    elsif (obj.unit == 'F') && (obj.unit_convert == 'C')
      obj = convert_from_F_to_C(obj)
    elsif (obj.unit == 'K') && (obj.unit_convert == 'F')
      obj = convert_from_K_to_F(obj)
    elsif (obj.unit == 'K') && (obj.unit_convert == 'C')
      obj = convert_from_K_to_C(obj)
    end
    obj
  end

  def convert_from_C_to_F(obj)
    obj.value = (obj.value * 1.8 + 32)
    obj
  end

  def convert_from_C_to_K(obj)
    obj.value = (obj.value + 273.15)
    obj
  end

  def convert_from_F_to_C(obj)
    obj.value = (5 * (obj.value - 32) / 9)
    obj
  end

  def convert_from_F_to_K(obj)
    obj.value = (5 * (obj.value - 32) / 9 + 273.15)
    obj
  end

  def convert_from_K_to_C(obj)
    obj.value = (obj.value - 273.15)
    obj
  end

  def convert_from_K_to_F(obj)
    obj.value = ((obj.value - 273.15) * 1.8 + 32)
    obj
  end
end
