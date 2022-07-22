module Ticketmaster
  class Country < Result
    def id
      data['id']
    end

    def name
      data['name']
    end

    def short_code
      data['short_code']
    end

    def country_id
      data['country_id']
    end

    def site_url
      data['site_url']
    end

    def currency
      data['currency']
    end

    def country_code
      data['country']['countryCode']
    end

    def langs
      data['langs']
    end

    def reload
      data = request.client.get_venue(id).data
      self
    end
  end
end
