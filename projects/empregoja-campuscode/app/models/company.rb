class Company < ActiveRecord::Base
  has_many :jobs
  validates :name, :location, :mail, :phone, presence: true

  def premium?
    jobs.length > 4
  end

end
