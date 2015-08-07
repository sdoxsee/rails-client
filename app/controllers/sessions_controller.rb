class SessionsController < ApplicationController

  def new
    # redirect_to '/auth/google_oauth2'
    redirect_to '/auth/mitreid_connect'
  end

  def google_sso
    redirect_to '/auth/google_oauth2'
  end

  def create
    auth = request.env["omniauth.auth"]
    # note: look for matching user via 'email'? fuzzy?

    # if auth['provider'] is google
        # no user match
            # go to form to create rails and mitre user (bootstrapping from google). tack on mitre and google to rails user
        # user match
            # no google and no mitre
                # create mitre user. tack on mitre and google. migrating account?
            # no google but has mitre
                # tack on google
            # has google and has mitre
                # just signing in
    # if auth['provider'] is mitre
        # no user match
            # go to form to create rails user (bootstrapping from mitre). tack on mitre to rails user
        # user match
            # no mitre and no google
                # tack on mitre. migrating account?
            # no mitre but has google
                # tack on mitre. migrating account?
            # has mitre
                # just signing in
    user = User.where(:provider => auth['provider'],
                      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
    reset_session
    session[:user_id] = user.id
    redirect_to root_url, :notice => 'Signed in!'
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end

end
