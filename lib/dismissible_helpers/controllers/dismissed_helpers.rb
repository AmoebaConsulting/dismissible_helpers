module DismissibleHelpers::Controllers::DismissedHelpers
  def create
    if respond_to?(:current_account) && current_account && current_account.respond_to?(:dismissed_helpers)
      current_account.dismissed_helpers += [ params[:helper] ]
      current_account.save!
    else
      if cookies[:dismissed_helpers].present?
        dismissed_helpers = YAML.load cookies[:dismissed_helpers]
        dismissed_helpers += [params[:helper]]
      else
        dismissed_helpers = [params[:helper]]
      end
      cookies[:dismissed_helpers] = dismissed_helpers.to_yaml
    end

    render :json => {}, :status => :ok
  end
end
