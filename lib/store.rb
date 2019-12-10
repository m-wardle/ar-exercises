class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_carry_clothes

  before_destroy :check_employees

  private

  def must_carry_clothes
    if mens_apparel == false && womens_apparel == false
      errors.add(:store, "must carry some kind of clothes")
    end
  end

  def check_employees
    begin
      if self.employees.size() > 0
        throw :abort
      end
    rescue
      puts "Cannot delete store with current employees"
      return false
    end
  end

end
