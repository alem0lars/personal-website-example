namespace :railroady do
  task :statemachine do
    `railroady -A | dot -Tsvg > doc/state_machine.svg`
  end
end
