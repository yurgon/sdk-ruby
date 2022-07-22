module Ticketmaster
  class City < Result
    def id
      data['id']
    end

    def name
      data['name']
    end
    
    def country_id
      data['country_id']
    end
    
    def region_id
      data['region_id']
    end
  end
end
