class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :must_carry_apparel

  def must_carry_apparel
    # abort "#{mens_apparel} #{womens_apparel}"
    tester_men = mens_apparel.nil? ? false : mens_apparel
    tester_women = womens_apparel.nil? ? false : womens_apparel
    if tester_men == false && tester_women == false
      errors.add(:mens_apparel, "or women's apparel must be carried")
    end
  end


end
