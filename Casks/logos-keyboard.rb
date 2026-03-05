cask "logos-keyboard" do
  version "0.3"
  sha256 "22eee79ff1ba3822d1d78f5c45c88eb1fa30a03c466b24074c1afb4109f5876a"

  url "https://github.com/jazzz/logos-keyboard/releases/download/v0.1/LogosKeyboard.bundle.zip"
  name "Logos Keyboard"
  desc "Logos Keyboard bundle"
  homepage "https://github.com/jazzz/logos-keyboard"

  artifact "λKeyboard.bundle", target: "#{Dir.home}/Library/Keyboard Layouts/λKeyboard.bundle"
end
