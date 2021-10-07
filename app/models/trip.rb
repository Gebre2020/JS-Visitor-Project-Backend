class Trip < ApplicationRecord
  belongs_to :location

  # def naming
  #   self.name.upcase
  # end

  def location_name=(loc_attribute)
   # byebug
    if !loc_attribute.blank?
      self.location = Location.find_or_create_by(name: loc_attribute.upcase) 
    end
  end

  def location_name
    self.location.name
  end

end
