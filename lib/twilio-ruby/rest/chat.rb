##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Chat < Domain
      ##
      # Initialize the Chat Domain
      def initialize(twilio)
        super

        @base_url = 'https://chat.twilio.com'
        @host = 'chat.twilio.com'
        @port = 443

        # Versions
        @v1 = nil
        @v2 = nil
      end

      ##
      # Version v1 of chat
      def v1
        @v1 ||= V1.new self
      end

      ##
      # Version v2 of chat
      def v2
        @v2 ||= V2.new self
      end

      def credentials
        self.v2.credentials
      end

      def services
        self.v2.services
      end

      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio::REST::Chat>'
      end
    end
  end
end