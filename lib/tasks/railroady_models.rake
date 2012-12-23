namespace :railroady do
  task :models do
    `railroady -M -a | dot -Tsvg > doc/models.svg`
  end
end
