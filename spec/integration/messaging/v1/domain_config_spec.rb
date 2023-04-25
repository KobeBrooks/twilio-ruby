##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'DomainConfig' do
  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.domain_config('DNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://messaging.twilio.com/v1/LinkShortening/Domains/DNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Config',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "domain_sid": "DNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "config_sid": "ZKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "fallback_url": "https://www.example.com",
          "callback_url": "https://www.example.com",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://messaging.twilio.com/v1/LinkShortening/Domains/DNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Config"
      }
      ]
    ))

    actual = @client.messaging.v1.domain_config('DNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "domain_sid": "DNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "config_sid": "ZKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "fallback_url": "https://www.example.com",
          "callback_url": "https://www.example.com",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://messaging.twilio.com/v1/LinkShortening/Domains/DNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Config"
      }
      ]
    ))

    actual = @client.messaging.v1.domain_config('DNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.domain_config('DNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://messaging.twilio.com/v1/LinkShortening/Domains/DNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Config',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "domain_sid": "DNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "config_sid": "ZKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "fallback_url": "https://www.example.com",
          "callback_url": "https://www.example.com",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://messaging.twilio.com/v1/LinkShortening/Domains/DNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Config"
      }
      ]
    ))

    actual = @client.messaging.v1.domain_config('DNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end
end