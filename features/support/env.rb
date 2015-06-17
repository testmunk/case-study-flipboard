$LOAD_PATH.unshift *Dir.glob(File.expand_path("features"))

require 'calabash-android/cucumber'
require 'som/android/flipboard_app'


Before do
  @app = FlipboardApp.new(self)
end