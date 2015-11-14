class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

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

  def role_navigation
    # user - new journal
    # mod - journal viewing except destroy
    # admin - destroy
    case
    when current_user.admin?

    when current_user.moderator?

    when current_user


    end
  end

  private

  def redirect_unauthorized
    redirect_to root_url, alert: I18n.t('authorization.denied')
  end
end
