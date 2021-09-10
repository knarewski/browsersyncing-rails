unless Rails.root.join("package.json").exist?
  say "Add default package.json"
  copy_file "#{__dir__}/package.json", "package.json"
end

unless Rails.root.join("bs-config.js").exist?
  say "Add default bs-config.js"
  copy_file "#{__dir__}/bs-config.js", "bs-config.js"
end

if Rails.root.join("Procfile.dev").exist?
  append_to_file "Procfile.dev", "browsersyncing: yarn browsersyncing"
else
  say "Add default Procfile.dev"
  copy_file "#{__dir__}/Procfile.dev", "Procfile.dev"

  say "Ensure foreman is installed"
  run "gem install foreman"
end

say "Add bin/dev to start foreman"
copy_file "#{__dir__}/dev", "bin/dev"
chmod "bin/dev", 0755, verbose: false

say "Install Browser Sync"
run "yarn add browser-sync"

say "Add browsersyncing script"
run %(npm set-script browsersyncing "browser-sync start --config bs-config.js")
