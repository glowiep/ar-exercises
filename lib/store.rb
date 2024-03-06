class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 },  presence: true
  validate :carry_men_or_women_apparel
  private

  # Stores must carry at least one of the men's or women's apparel
  def carry_men_or_women_apparel 
    if !mens_apparel? && !womens_apparel?
      errors.add(:base, "Must have at least one type of apparel present")
    end
  end
end
