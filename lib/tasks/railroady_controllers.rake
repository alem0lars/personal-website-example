namespace :railroady do
  task :controllers do
    `railroady -C | dot -Tsvg > doc/controllers.svg`
  end
end
