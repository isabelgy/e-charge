class Api::V1::UsersController < Api::V1::BaseController
  require 'rest-client'
  require 'pry-byebug'

  respond_to :json

  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze

  def create
    # puts "create"

    @user = User.find_by openid: wechat_email || User.create(user_wechat_params)
    puts @user.id
    unless @user.save
      render_error
    end
    render json: @user if @user.persisted?
  end

  private

  def render_error
    render json: { errors: @rental.errors.full_messages },
      status: :unprocessable_entity
  end

  def wechat_email
   @wechat_email ||= wechat_user.fetch('openid') + "@myapp.com"
  end
  # def wechat_openid
  #   puts "openid"
  #   wechat_user.fetch("openid")
  # end

  def user_wechat_params
    # return @user_wechat_params if @user_wechat_params

# binding.pry
    # @user_wechat_params = user_params
    @user_wechat_params = {}
   # GET both openid and session_key
    @user_wechat_params['openid'] = wechat_email
    @user_wechat_params['password'] = wechat_user.fetch('session_key')#, Devise.friendly_token)
    # @user_wechat_params['authentication_token'] = @user_wechat_params['password']
    @user_wechat_params
  end


  def wechat_user
    # puts "wechatuser"

    @wechat_response ||= RestClient.post(URL, wechat_params)
    # puts "got wechat_response"
    # puts @wechat_response
    @wechat_user ||= JSON.parse(@wechat_response.body)
  end

  def wechat_params
    { appid: ENV.fetch("APPID"),
      secret: ENV.fetch("APPSECRET"),
      js_code: params[:code],
      grant_type: "authorization_code"}
  end

  def user_params
    params.require(:user).permit(:name)
  end

end
