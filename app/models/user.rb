class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :leads, :dependent => :destroy
  has_many :listings, :dependent => :destroy
  
  validates :about, :length => { :maximum => 2000 }
  validates :quote, :length => { :maximum => 225 }

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :first_name, :last_name, :city, :phone, :company, :quote, :about, :password, :password_confirmation, :remember_me, :avatar
  mount_uploader :avatar, AvatarUploader
  
  def create_subscription_and_setup_account!(account_type)
    @account_type = params[:account_type]
    @product_id = PaymentProcessor.product_id(@account_type)
      json_data = {
        :subscription => {
          :product_id => @product_id,
          :customer_attributes => {
            :first_name => self.first_name,
            :last_name => self.last_name,
            :email => self.email,
            :reference => self.id
          }
        }
      }

      subscription = Chargify::Subscription.create(json_data[:subscription])
      Account.init!(subscription) unless subscription.blank?
  end

end
