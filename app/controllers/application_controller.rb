class ApplicationController < ActionController::Base
  before_action :basic_auth

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      puts "認証チェック: #{username} / #{password}" # ←ログ出力確認
      username == "admin" && password == "2222"
    end
  end
end
