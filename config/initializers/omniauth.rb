Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :google_oauth2, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret
  provider :openid_connect, {
        name: :openid_connect,
        scope: [:openid, :email, :profile],
        response_type: :code,
        client_options: {
            scheme: "https",
            host: "accounts.google.com",
            port: 443,
            authorization_endpoint: "/o/oauth2/auth",
            token_endpoint: "https://www.googleapis.com/oauth2/v4/token",
            userinfo_endpoint: "https://www.googleapis.com/oauth2/v3/userinfo",
            identifier: Rails.application.secrets.omniauth_provider_key,
            secret: Rails.application.secrets.omniauth_provider_secret,
            redirect_uri: "http://localhost:3000/auth/openid_connect/callback",
        },
    }
end
