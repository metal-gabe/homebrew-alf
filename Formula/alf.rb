class Alf < Formula
  desc "A smolderingly-nimble Rust TUI to rediscover your custom shell"
  homepage "https://github.com/metal-gabe/alf-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/metal-gabe/alf-cli/releases/download/v#{version}/alf-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b603c3ea02d150a890d73ad90a8e174921cb1ce3d2edc08f57bfbf526bc64f9b"
    end

    on_intel do
      url "https://github.com/metal-gabe/alf-cli/releases/download/v#{version}/alf-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bd356df284733e07aa550c4f3aae542ba64a505c5677f7359104b864774dd0bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metalgabe/alf-cli/releases/download/v#{version}/alf-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "187bbc1e3daad323795661e14c57776e4ba268efd411fb231f28ac609d6757b4"
    end

    on_intel do
      url "https://github.com/metalgabe/alf-cli/releases/download/v#{version}/alf-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43dd65c690a645a4b9a744de648117d6cf93284f8e6be6c42a7410a6677a6cf9"
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
