class Branch < ActiveRecord::Base
  include PragmaticContext::Contextualizable

  contextualize :branch_name, :as => "http://schema.org/branch"
  contextualize :branch_id, :as => "http://example.com/id"
  contextualize :address, :as => "http://schema.org/address"
  contextualize :phone, :as => "http://example.com/phone"
  contextualize :monday_open, :as => "http://example.com/time"
  contextualize :monday_close, :as => "http://example.com/time"
  contextualize :tuesday_open, :as => "http://example.com/time"
  contextualize :tuesday_close, :as => "http://example.com/time"
  contextualize :wednesday_open, :as => "http://example.com/time"
  contextualize :wednesday_close, :as => "http://example.com/time"
  contextualize :thursday_open, :as => "http://example.com/time"
  contextualize :thursday_close, :as => "http://example.com/time"
  contextualize :friday_open, :as => "http://example.com/time"
  contextualize :friday_close, :as => "http://example.com/time"
  contextualize :saturday_open, :as => "http://example.com/time"
  contextualize :saturday_close, :as => "http://example.com/time"
  contextualize :sunday_open, :as => "http://example.com/time"
  contextualize :sunday_close, :as => "http://example.com/time"
end
