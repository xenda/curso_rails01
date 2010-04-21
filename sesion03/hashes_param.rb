def metodo(options)
  
end


metodo({"nombre" => "Alvaro", "edad" => 24})

metodo "nombre" => "Alvaro", "edad" => 24


metodo :nombre =>"Alvaro", :edad => 24


#En rails

class Product < ActiveRecord::Base
  
  has_many :units
  has_many :tags, :through => :details
  
end