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
  
  # these states are those that Chargify considers to be safe, meaning
    # your users should still be able to login to your application
    ACTIVE_STATES = ['pending', 'trialing', 'assessing', 'active', 'soft_failure', 'past_due']

    # ...

    # this method will almost always be unique to the application itself,
    # but I wanted to show an example implementation just in case it's useful
    def self.init!(subscription, account_state = 'pending')
      user_id = subscription.customer.reference if subscription.customer
      product_handle = subscription.product.handle if subscription.product

      if user_id && product_handle
        user = User.find_by_id(user_id)

        unless user.activated?
          user.apply_default_settings
          user.activate!
        end
      end
    end

    # a series of example convenience methods.....

    def chargify_subscriber_id
      @subscriber_id ||= Chargify::Subscription.find_by_customer_reference(user_id).id
    end

    def active?
      ACTIVE_STATES.include?(self.state) || self.exempt?
    end

    def inactive?
      !self.active?
    end

end
