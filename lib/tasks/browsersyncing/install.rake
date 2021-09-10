namespace :browsersyncing do
  desc "Install Browser Sync"
  task :install do
    system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../install/install.rb",  __dir__)}"
  end
end
