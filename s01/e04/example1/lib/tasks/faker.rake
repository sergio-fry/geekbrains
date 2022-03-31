namespace :faker do
  task datetime: [:date, :time]

  task :date do
    puts Date.today
  end

  task :time do
    puts Time.now
  end

  task :star, [:times] do |t, args|
    args.with_defaults(times: 5)

    puts '*' * args[:times].to_i
  end

  task :stars do
    puts '*' * ENV.fetch('STAR_TIMES', '5').to_i
    puts '*' * ENV['STAR_TIMES'].to_i
  end
end
