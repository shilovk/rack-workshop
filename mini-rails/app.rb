# frozen_string_literal: true

require 'rails'
require 'action_controller'

class App < Rails::Application
  config.middleware.delete ActionDispatch::HostAuthorization
  config.middleware.delete Rack::Sendfile
  config.middleware.delete ActionDispatch::Static
  config.middleware.delete ActionDispatch::Executor
  config.middleware.delete ActionDispatch::ServerTiming
  config.middleware.delete ActiveSupport::Cache::Strategy::LocalCache::Middleware
  config.middleware.delete Rack::Runtime
  config.middleware.delete Rack::MethodOverride
  config.middleware.delete ActionDispatch::RequestId
  config.middleware.delete ActionDispatch::RemoteIp
  config.middleware.delete Rails::Rack::Logger
  config.middleware.delete ActionDispatch::ShowExceptions
  config.middleware.delete ActionDispatch::DebugExceptions
  config.middleware.delete ActionDispatch::ActionableExceptions
  config.middleware.delete ActionDispatch::Reloader
  config.middleware.delete ActionDispatch::Callbacks
  config.middleware.delete ActionDispatch::Cookies
  config.middleware.delete ActionDispatch::Session::CookieStore
  config.middleware.delete ActionDispatch::Flash
  config.middleware.delete ActionDispatch::ContentSecurityPolicy::Middleware
  config.middleware.delete ActionDispatch::PermissionsPolicy::Middleware
  config.middleware.delete Rack::Head
  config.middleware.delete Rack::ConditionalGet
  config.middleware.delete Rack::ETag
  config.middleware.delete Rack::TempfileReaper
end

class MainController < ActionController::Base
  def about
    render json: { page: 'About' }
  end
end

class ItemsController < ActionController::Base
  def goods
    render json: { page: 'Goods' }
  end
end

App.routes.draw do
  get '/about', to: 'main#about', as: 'about'
  get '/goods', to: 'items#goods', as: 'goods'

  root to: 'main#about'
end
