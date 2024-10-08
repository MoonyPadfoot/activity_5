class Product < ApplicationRecord
  has_one :manufacturer
  has_one :warranty
  has_many :product_category_ships
  has_many :categories, through: :product_category_ships
  has_many :product_supplier_ships
  has_many :products, through: :product_supplier_ships
  has_many :order_items
  has_many :reviews

  scope :search_by_name, ->(query) { where('name LIKE ?', "%#{query}%") if query.present? && query != "" }
  scope :filter_by_available, ->(available) { where(available: available) }
  scope :filter_by_quantity, ->(quantity_min, quantity_max) { where(quantity: quantity_min..quantity_max) if quantity_min.present? && quantity_max.present? }
  scope :filter_by_price, ->(price_min, price_max) { where(price: price_min..price_max) if price_min.present? && price_max.present? }
  scope :filter_by_released_at, ->(released_at_start, released_at_end) { where(price: released_at_start..released_at_end) if released_at_start.present? && released_at_end.present? }

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"]
  VALIDATABLE_ATTRS = Product.attribute_names.reject { |attr| NON_VALIDATABLE_ATTRS.include?(attr) }

  validates_presence_of VALIDATABLE_ATTRS
  validates :name, length: { minimum: 6, maximum: 50 }
  validates :content, length: { minimum: 10, maximum: 300 }

  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :discount, numericality: { only_float: true, in: 1..100 }

  validates :available, inclusion: { in: [true, false], message: "%{value} should either be true or false" }

  validates :image, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }

  validate :date_must_be_greater_than_specific_year

  private

  def date_must_be_greater_than_specific_year
    if released_at.present? && released_at <= Date.new(2000, 01, 01)
      errors.add(:released_at, "must be greater than year 2000")
    end
  end

  mount_uploader :image, ImageUploader
end
