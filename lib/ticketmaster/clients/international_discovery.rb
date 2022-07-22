module Ticketmaster
  class Client
    module InternationalDiscovery
      def int_search_events(options={})
        options[:version] ||= 'v2'
        options[:params] ||= {}

        request  = Request.new("mfxapi/#{options[:version]}/events", options[:params], self)
        response = request.get
        Result.search(response, request, 'events')
      end

      def int_get_event(id, options={})
        options[:version] ||= 'v2'

        request  = Request.new("mfxapi/#{options[:version]}/events/#{id}", {}, self)
        response = request.get
        Result.create(response, request, 'Ticketmaster::Event')
      end

      def int_get_event_images(id, options={})
        options[:version] ||= 'v2'

        request  = Request.new("mfxapi/#{options[:version]}/events/#{id}/images", {}, self)
        response = request.get
        Result.array(response['images'], request, 'Ticketmaster::Image')
      end

      def int_search_attractions(options={})
        options[:version] ||= 'v2'
        options[:params] ||= {}

        request  = Request.new("mfxapi/#{options[:version]}/attractions", options[:params], self)
        response = request.get
        Result.search(response, request, 'attractions')
      end

      def int_get_attraction(id, options={})
        options[:version] ||= 'v2'

        request  = Request.new("mfxapi/#{options[:version]}/attractions/#{id}", {}, self)
        response = request.get
        Result.create(response, request, 'Ticketmaster::Attraction')
      end

      def int_search_classifications(options={})
        options[:version] ||= 'v2'
        options[:params] ||= {}

        request  = Request.new("mfxapi/#{options[:version]}/classifications", options[:params], self)
        response = request.get
        Result.search(response, request, 'classifications')
      end

      def int_get_classification(id, type, options={})
        options[:version] ||= 'v2'

        request  = Request.new("discovery/#{options[:version]}/#{type}/#{id}", {}, self)
        response = request.get
        Result.create(response, request, 'Ticketmaster::Classification')
      end

      def int_search_venues(options={})
        options[:version] ||= 'v2'
        options[:params] ||= {}

        request  = Request.new("mfxapi/#{options[:version]}/venues", options[:params], self)
        response = request.get
        Result.search(response, request, 'venues')
      end

      def int_get_venue(id, options={})
        options[:version] ||= 'v2'
        options[:params] ||= {}

        request  = Request.new("mfxapi/#{options[:version]}/venues/#{id}", options[:params], self)
        response = request.get
        Result.create(response, request, 'Ticketmaster::Venue')
      end

      def int_get_legacy_event(id, options={})
        options[:version] ||= 'v2'

        request  = Request.new("mfxapi/#{options[:version]}/events/legacy/#{id}", {}, self)
        response = request.get
        Result.create(response, request, 'Ticketmaster::Event')
      end
      
      def int_get_domains(options={})
        options[:version] ||= 'v2'
        options[:params] ||= {}

        request  = Request.new("mfxapi/#{options[:version]}/domains", options[:params], self)
        response = request.get
        Result.create(response, request, 'Ticketmaster::Domain')
      end
      
      def int_get_categories(options={})
        options[:version] ||= 'v2'
        options[:params] ||= {}

        request  = Request.new("mfxapi/#{options[:version]}/categories", options[:params], self)
        response = request.get
        Result.create(response, request, 'Ticketmaster::Category')
      end
    end
  end
end
