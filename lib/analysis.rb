class Analysis
  def min_in_arr(array)
    array.min
  end

  def max_in_arr(array)
    array.max
  end

  def search_min_in_matrix(array)
    mins = []
    (1..array.length - 1).each do |i|
      mins[i - 1] = array[i][1..array[1].length].min { |a, b| a.to_f <=> b.to_f }
    end
    min_in_arr(mins)
  end

  def search_max_in_matrix(array)
    maxs = []
    (1..array.length - 1).each do |i|
      maxs[i - 1] = array[i][1..array[1].length].max { |a, b| a.to_f <=> b.to_f }
    end
    max_in_arr(maxs)
  end

  def sum(array)
    sum = 0
    (1..array.length - 1).each do |i|
      sum += array[i][1..array[i].length].inject { |x, n| x.to_f + n.to_f }
    end
    sum
  end

  def average(array)
    avg = sum(array)
    (avg / ((array[0].length - 1) * (array.length - 1))).round(2)
  end

  def sum_of_squares(array)
    avg = average(array)
    sum_sq = 0
    (1..array.length - 1).each do |i|
      sq = array[i][1..array[i].length].map { |x| (x.to_f - avg)**2 }
      sum_sq = sq.inject { |x, n| x + n }
    end
    sum_sq
  end

  def variance(array)
    a = sum_of_squares(array)
    (a / (array[0].length - 1)).round(2)
  end
end
