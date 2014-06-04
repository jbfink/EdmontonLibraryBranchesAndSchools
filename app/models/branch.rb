class Branch < ActiveRecord::Base
  include PragmaticContext::Contextualizable

  #field :branch_name, :branch_id, :address, :phone

  contextualize :branch_name, :as => "http://schema.org/branch"
  contextualize :branch_id, :as => "http://example.com/id"
  contextualize :address, :as => "http://schema.org/address"
  contextualize :phone, :as => "http://example.com/phone"
end
