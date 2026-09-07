raise "Demo seeds are only for development" unless Rails.env.development?
Post.find_or_create_by!(title: "Willkommen im Ruby-Blog") do |post|
  post.body = "Unser erster gemeinsamer Beitrag."
  post.published_at = Time.current
end
