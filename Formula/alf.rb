class Alf < Formula
  desc "A smolderingly-nimble Rust TUI to rediscover your custom shell"
  homepage "https://github.com/metal-gabe/alf-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/metal-gabe/alf-cli/releases/download/v#{version}/alf-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1d70857cd07caf571952af4c2b309ee5a9d8e86de226ec300d72652e534b4c39"
    end

    on_intel do
      url "https://github.com/metal-gabe/alf-cli/releases/download/v#{version}/alf-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5d1a2386c6a2aec9c6b64876d6dafcc4469d078169a778b24d4ab0fa934212f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metalgabe/alf-cli/releases/download/v#{version}/alf-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9cfec0607138b25f848b7598dccaa68c593603fcb8ae2d740ccfd232ee85a451"
    end

    on_intel do
      url "https://github.com/metalgabe/alf-cli/releases/download/v#{version}/alf-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "036829606214a88cbd89801873df04939399657ed5e8b48a728297ecff581770"
    end
  end

  def install
    bin.install "alf"
  end

  def caveats
    <<~EOS
      Thanks for installing `alf`! \m/_(>.<)_\m/
      View the site (https://alf.metalgabe.dev) to learn more.
    EOS
  end

  test do
    system "#{bin}/alf", "--version"
  end
end
