class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetize
    @alpha = Customer.order('full_name ASC')
  end

  def missing_email
    @missing_email = Customer.where(email: nil)
  end
end
