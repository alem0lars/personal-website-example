namespace :railroady do
  task :all do
    %w[
      railroady:models
      railroady:controllers
      railroady:statemachine
    ].each { |t| Rake::Task[t].invoke() }
  end
end
