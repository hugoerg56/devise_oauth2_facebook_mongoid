class Devise::FacebookConsumerController < ApplicationController
  include Devise::Controllers::InternalHelpers
  include DeviseOauth2Facebook::FacebookConsumerHelper
  
  def auth
    url = send("#{resource_name}_fb_callback_url".to_sym)
    redirect_to facebook_client.authorization.authorize_url(:redirect_uri => url , :scope => Devise.facebook_permissions)
  end
  
  def callback

    url = send("#{resource_name}_fb_callback_url".to_sym)
    
    client = facebook_client
    
    puts params[:code]
    client.authorization.process_callback(params[:code], :redirect_uri => url)

    token = client.access_token
    fb_user = client.selection.me.info!
 
    resource = resource_class.find_with_facebook_user(fb_user, token)
    unless resource
      resource = resource_class.create_with_facebook_user(fb_user, token)
    end
    puts resource.inspect
    set_flash_message :notice, :signed_in
    sign_in_and_redirect(:user, resource)

  end

end