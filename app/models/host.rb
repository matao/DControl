#host.rb
#Description: This is the model for the Hosts in the datacenter.
###############################################################################
class Host < ActiveRecord::Base
  #Relationship
  has_many :vms, :foreign_key => :host_id

  #Validations
  validates :ip_address, :cpu_count, presence: true

end
