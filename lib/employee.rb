class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {greater_than: 40}
  validates :hourly_rate, numericality: {less_than: 200}
  validates :store_id, presence: true

  before_create :add_password

  private
  def generate_password
    charset = Array('A'...'Z') + Array('a'...'z')
    Array.new(8) {charset.sample}.join
  end

  def add_password
    self.password = generate_password
  end
end
