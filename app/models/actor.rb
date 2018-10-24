class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    puts "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.map{|a| a.name - a.show.name}
  end

end
