class LogosKeyboard < Formula
  desc "Logos Keyboard bundle"
  homepage "https://github.com/jazzz/logos-keyboard"
  url "https://github.com/jazzz/logos-keyboard/releases/download/v0.1/LogosKeyboard.bundle.zip"
  sha256 "9e27b1992fccc7a3e9b62f91c24cbadc840fb1e0b120194337d92a000d1488ae"
  version "0.1"

  def install
    prefix.install "Contents"
    (prefix/"install.log").write "Installed\n"
  end

  def post_install
    target = Pathname.new("#{Dir.home}/Library/Keyboard Layouts/λKeyboard.bundle")
    target.mkpath
    cp_r "#{prefix}/Contents", target
  end

  def uninstall
    rm_rf "#{Dir.home}/Library/Keyboard Layouts/λKeyboard.bundle"
  end

  test do
    assert_predicate Pathname.new("#{Dir.home}/Library/Keyboard Layouts/λKeyboard.bundle"), :exist?
  end
end