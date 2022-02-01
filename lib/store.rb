class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { :only_integer => true }
  validate :atleast_one_apparel

  def atleast_one_apparel
    
     if mens_apparel == nil && womens_apparel == nil
        errors.add(:base, "Stores must carry at least one of the men's or women's apparel")
        errors.add(:womens_apparel, "Stores must carry at least one of women's apparel")
      
     end
  end
end

