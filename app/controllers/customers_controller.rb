class CustomersController < ApplicationController
  def index
    @customers = Customers.all
  end
  def alphabetized
    @alphabetized = Customers.order(:name)
  end
  def missing_email
    @missing_email = Customers.where(email: [nil,""])
  end
end
