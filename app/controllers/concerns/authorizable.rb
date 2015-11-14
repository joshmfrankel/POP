module Authorizable
  extend ActiveSupport::Concern

  included do
    helper_method :authorize_user, :authorize_moderator, :authorize_admin
  end

  def authorize_admin!
    unless current_user.admin?
      redirect_unauthorized
    end
  end

  def authorize_moderator!
    unless current_user.moderator? || authorize_admin!
      redirect_unauthorized
    end
  end

  def authorize_user!
    unless current_user.user? || authorize_moderator! || authorize_admin!
      redirect_unauthorized
    end
  end

  def authorize_user
    current_user.user? || current_user.moderator? || current_user.admin?
  end

  def authorize_moderator
    current_user.moderator? || current_user.admin?
  end

  def authorize_admin
    current_user.admin?
  end

  private

  def redirect_unauthorized
    redirect_to root_url, alert: I18n.t('authorization.denied')
  end
end
