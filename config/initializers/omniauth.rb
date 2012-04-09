Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'AMIQ7h9ZlyA3KuNI3r0EQ', 'RVnsq8nRNTBOZgG5sU4hsWAm6SnuLeXibF26xlhVBQ'
  provider :facebook, '328360657225453', 'd741f93ada5252de560c9dad8bc771df'
  provider :google_oauth2, '438252874224-mm2l0qbkdd6v75jfaj9mi5rcdu6n2ie1.apps.googleusercontent.com', 'o2MvGW-Ne-xfyJWq5vxJo6If'
end