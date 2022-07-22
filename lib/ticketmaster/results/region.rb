module Ticketmaster
  class Region < Result
    def id
      data['id']
    end

    def name
      data['name']
    end
    
    def country_id
      data['country_id']
    end
  end
end
