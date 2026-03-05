class LogosKeyboard < Formula
  desc "Logos Keyboard bundle"
  homepage "https://github.com/jazzz/logos-keyboard"
  url "https://github.com/jazzz/logos-keyboard/releases/download/v0.1/LogosKeyboard.bundle.zip"
  sha256 "22eee79ff1ba3822d1d78f5c45c88eb1fa30a03c466b24074c1afb4109f5876a"
  version "0.3"

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