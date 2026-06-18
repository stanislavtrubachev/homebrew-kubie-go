class KubieGo < Formula
  desc "Kubernetes context and namespace manager written in Go"
  homepage "https://github.com/stanislavtrubachev/kubie-go"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stanislavtrubachev/kubie-go/releases/download/v0.1.0/kubie-go_0.1.0_darwin_arm64.tar.gz"
      sha256 "aaf46df7ae13caae049e346621a6280cabbe55aa84aaafd4539f2efafe4bb9e0"
    end
    on_intel do
      url "https://github.com/stanislavtrubachev/kubie-go/releases/download/v0.1.0/kubie-go_0.1.0_darwin_amd64.tar.gz"
      sha256 "0322a98116ac68aec82b4949e33c40c6d2959d08efbc1bb46ee259aec0f97bdf"
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
