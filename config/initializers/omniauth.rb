Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'AMIQ7h9ZlyA3KuNI3r0EQ', 'RVnsq8nRNTBOZgG5sU4hsWAm6SnuLeXibF26xlhVBQ'
  provider :facebook, '328360657225453', 'd741f93ada5252de560c9dad8bc771df'
end