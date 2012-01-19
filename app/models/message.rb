class Message

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :your_name, :your_email, :email, :subject, :body

  validates :your_name, :your_email, :email, :subject, :body, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{your_name}=", value)
    end
  end

  def persisted?
    false
  end

end