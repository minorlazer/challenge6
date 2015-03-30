class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetize
    @alpha = Customer.order('full_name ASC')
  end
end
