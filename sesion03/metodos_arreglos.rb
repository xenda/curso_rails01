a = [1,2,3]
a << 4
#puts a  # [1,2,3,4]

b = a[2]
#puts b #3 

#c = a[0..2]
#puts c.inspect

d = a[0,3]
#puts d.inspect

a = [1,2,3,4]
#puts a.choice


a = [1,2,3,4,5]
# puts a.combination(3).to_a.inspect
# # 
# #puts a.include? 3
# 
# a = [1,2,[1,2],3]
# #puts a.inspect
# #puts a.flatten.inspect
# 
# a = [1,2,nil,nil,"someone"]
# #puts a.inspect
# #puts a.compact.inspect
# 
a = [1,2,3,4,5,6]
# puts a.select(&:odd?).inspect

# 
# 
# a = %w(e c d a g f b)
# #puts a.sort.inspect
puts a.sort_by { rand }
# 
# 
# a = [1,2,2,3,4,4,5,"a"]
# #puts a.uniq.inspect