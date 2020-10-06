require 'csv'
load './lib/analysis.rb'

a = CSV.read('./resources/data.csv')

analysis = Analysis.new
min = analysis.search_min_in_matrix(a)
max = analysis.search_max_in_matrix(a)
avg = analysis.average(a)
var = analysis.variance(a)
puts "Min value : #{min}"
puts "Max value : #{max}"
puts "Average value : #{avg}"
puts "Variance value : #{var}"
