class Tenant < ApplicationRecord
  after_create :create_tenant
  before_destroy :destroy_tenant

  def create_tenant
    Apartment::Tenant.create(subdomain)
  end

  def destroy_tenant
    Apartment::Tenant.drop(subdomain)
  end
end
