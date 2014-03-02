class UserObserver < ActiveRecord::Observer
  def after_save(user)
    user.logger.info "User Added: #{user.name}"
  end
end