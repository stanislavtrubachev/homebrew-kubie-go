class KubieGo < Formula
  desc "Kubernetes context and namespace manager written in Go"
  homepage "https://github.com/stanislavtrubachev/kubie-go"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stanislavtrubachev/kubie-go/releases/download/v0.1.2/kubie-go_0.1.2_darwin_arm64.tar.gz"
      sha256 "39d133f57dbc8a0dd46f806648d734590867d3a6ef3c503edf30ced1645df41d"
    end
    on_intel do
      url "https://github.com/stanislavtrubachev/kubie-go/releases/download/v0.1.2/kubie-go_0.1.2_darwin_amd64.tar.gz"
      sha256 "c26160a1edc174ab42b94d41e5e25aa4355269715b63e784928614be223b62be"
    end
  end

  def install
    bin.install "kubie-go"
    bin.install_symlink bin/"kubie-go" => "kubie"
    zsh_completion.install "completion/kubie.zsh" => "_kubie"
    bash_completion.install "completion/kubie.bash"
    fish_completion.install "completion/kubie.fish"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/kubie-go 2>&1", 1)
  end
end
