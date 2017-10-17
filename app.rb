# frozen_string_literal: true

require 'bundler/setup'
Bundler.require(:default)

redis_connection = Redis.new
namespace = ENV.fetch('APP_ENV', 'development')
namespaced_redis = Redis::Namespace.new(namespace, redis: redis_connection)

get '/' do
	"Microservice By Gaurish. Time is #{Time.now.iso8601}"
end