class System < ApplicationRecord
  belongs_to :empire

  def self.new_location
    (0...4).map { (65 + rand(26)).chr }.join
  end
end
