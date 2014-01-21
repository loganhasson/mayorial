class Foursquare < ActiveRecord::Base

  CLIENT = Foursquare2::Client.new(:oauth_token => ENV['LOGAN_OAUTH_TOKEN'])

  def self.checkin
    CLIENT.add_checkin(:venueId => ENV["FLATIRON_ID"], :broadcast => 'public', :ll => ENV["FLATIRON_COORDS"], :shout => 'Also sorry, Joe.')
  end

  def self.search
    CLIENT.search_venues(:ll => '40.43781,-73.59602', :query => 'Flatiron School')
  end

end
