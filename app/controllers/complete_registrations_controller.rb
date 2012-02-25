class CompleteRegistrationsController < ApplicationController
  def new
    subscription = Chargify::Subscription.find(params[:subscription].to_i) rescue nil
    User.init!(subscription) if subscription.present?
  end
end