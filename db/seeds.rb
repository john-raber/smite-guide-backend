# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'digest/md5'
require 'time'
require 'rest-client'
require 'json'

SMITE_PC_URL = "http://api.smitegame.com/smiteapi.svc"

# creating session to make requests
def create_smite_api_session
  session_timestamp = Time.now.getutc.strftime("%Y%m%d%H%M%S")
  session_string = "#{ENV['SMITE_API_DEV_ID']}" + 'createsession' + "#{ENV['SMITE_API_AUTHKEY']}" + session_timestamp
  session_signature = Digest::MD5.hexdigest(session_string)

  smite_session = RestClient.get("#{SMITE_PC_URL}/createsessionJson/#{ENV['SMITE_API_DEV_ID']}/#{session_signature}/#{session_timestamp}")
  JSON.parse(smite_session)['session_id']
end

# if 
def get_smite_gods
  timestamp = Time.now.getutc.strftime("%Y%m%d%H%M%S")
  request_string = "#{ENV['SMITE_API_DEV_ID']}" + 'getgods' + "#{ENV['SMITE_API_AUTHKEY']}" + timestamp
  request_signature = Digest::MD5.hexdigest(request_string)

  smite_gods = RestClient.get("#{SMITE_PC_URL}/getgodsJson/#{ENV['SMITE_API_DEV_ID']}/#{request_signature}/#{create_smite_api_session}/#{timestamp}/1")
  JSON.parse(smite_gods)
end
