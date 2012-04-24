class Company
  include Mongoid::Document
  field :name
  field :domain
  field :qrank
  field :arank
  field :server_location
  field :deepdive
  field :chat
  field :is_brand
  field :retailers
  field :social
 # paginates_per 100

  named_scope :arank_exists,	where(:arank.gt => -1)
  named_scope :qrank_exists,    where(:qrank.gt => -1)
  
	
  FILTERS = [
	{:scope => "all", :label => "All"},
	{:scope => "arank_exists", :label => "Valid Arank"},
	{:scope => "qrank_exists", :label => "Valid Qrank"}	
  ]

  def self.search(search)
	if search and !search.eql?("")
	  #where("this.name.match(/#{search}/i) || (this.chat.match(/#{search}/i)")
	  where("
			this.name.match(/#{search}/i) || 
			this.chat.match(/#{search}/i) || 
			this.domain.match(/#{search}/i)
		") 
	else
	  scoped
	end
  end

end
