module Ticketmaster
  class Country < Result
    def id
      data['id']
    end

    def name
      data['name']
    end
  end
end
