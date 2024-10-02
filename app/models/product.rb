class Product < ApplicationRecord
  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"]
  VALIDATABLE_ATTRS = Product.attribute_names.reject { |attr| NON_VALIDATABLE_ATTRS.include?(attr) }

  validates_presence_of VALIDATABLE_ATTRS
  validates :name, length: { minimum: 6, maximum: 50 }
  validates :content, length: { minimum: 10, maximum: 300 }

  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :discount, numericality: { only_float: true, in: 1..100 }

  validates :available, inclusion: { in: %w(true false), message: "%{value} should either be true or false" }

  validates :image, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }

  validate :date_must_be_greater_than_specific_year

  private

  def date_must_be_greater_than_specific_year
    if released_at.present? && released_at <= Date.new(2000, 01, 01)
      errors.add(:released_at, "must be greater than year 2000")
    end
  end

  has_many :product_category_ships
  has_many :categories, through: :product_category_ships
end
