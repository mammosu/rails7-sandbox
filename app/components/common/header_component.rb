# frozen_string_literal: true

class Common::HeaderComponent < ViewComponent::Base
  def initialize(user_signed_in:)
    @user_signed_in = user_signed_in
  end
end
