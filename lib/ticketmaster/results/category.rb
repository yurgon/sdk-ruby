module Ticketmaster
  class Category < Result
    def id
      data['id']
    end

    def name
      data['name']
    end
    
    def subcategories
      Result.array(data['subcategories'], request, 'Ticketmaster::Category') if data['subcategories'].present?
    end
  end
end
