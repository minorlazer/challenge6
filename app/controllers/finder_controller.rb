class FinderController < ApplicationController
  def index
    @customers = Customer.all
    @provinces_for_select = Province.provinces_for_select
  end

  def alphabetize
    @alpha = Customer.order('full_name ASC')
  end

  def missing_email
    @missing_email = Customer.where("email is null OR email = ''")
  end
end
