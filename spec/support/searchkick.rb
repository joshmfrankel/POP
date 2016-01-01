RSpec.configure do |config|
  config.before :each do
    Journal.reindex
  end
end
