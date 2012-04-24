class Retailer
  include Mongoid::Document
  field :name
  field :url
  field :brands
  key :name
end
