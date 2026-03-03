cask "logos-keyboard" do
  version "0.1"
  sha256 "9e27b1992fccc7a3e9b62f91c24cbadc840fb1e0b120194337d92a000d1488ae"

  url "https://github.com/jazzz/logos-keyboard/releases/download/v0.1/LogosKeyboard.bundle.zip"
  name "Logos Keyboard"
  desc "Logos Keyboard bundle"
  homepage "https://github.com/jazzz/logos-keyboard"

  artifact "λKeyboard.bundle", target: "#{Dir.home}/Library/Keyboard Layouts/λKeyboard.bundle"
end
