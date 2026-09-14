raise "Demo seeds are only for development" unless Rails.env.development?

%w[anna ben].each do |name|
  user = User.find_or_initialize_by(email_address: "#{name}@example.test")
  user.update!(password: "supersecret")
  user.posts.find_or_create_by!(title: "#{name.capitalize}s öffentlicher Beitrag") do |post|
    post.body = "Diesen Beitrag dürfen alle lesen."
    post.published_at = 1.day.ago
  end
  user.posts.find_or_create_by!(title: "#{name.capitalize}s Entwurf") do |post|
    post.body = "Dieser Entwurf gehört nur mir."
  end
end
