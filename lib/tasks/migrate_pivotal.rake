namespace :migrate_pivotal do
  task populate: :environment do
    @users = Support::Pivotal::User.all

    @users.each do |user|
      user.password = user.password
      user.save
    end
  end
end
