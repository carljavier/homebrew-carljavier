class Tfm < Formula
    desc "tfm cli -- Command Line Interface to migrate TFE workspace to TFC"
    homepage "https://github.com/hashicorp-services/tfm"
    url "git@github.com:hashicorp-services/tfm.git", :using => :git, :tag => "0.0.2-pre-alpha"
    head "git@github.com:hashicorp-services/tfm.git", :using => :git, :branch => "main"
  
    depends_on "go" => :build
  
    def install
      if build.head?
        v_version = Utils.popen_read("git", "describe", "--tags", "--dirty", "--always").chomp
      else
        v_version = "v#{version}"
      end
      ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
      go_ldflags = "-w -s"
      go_ldflags << " -X 'github.com/hashicorp-services/tfm/version.Version=#{v_version}'"
      go_ldflags << " -X 'github.com/hashicorp-services/tfm/version.BuiltBy=HomeBrew'"
      system "go", "build", "-trimpath", "-ldflags", go_ldflags, "-o", bin/"tfm"
    end
    def caveats
      <<~EOS

        See the tfm's documentation for more information:
        https://go.hashi.co/tfm
  
        CHANGELOG:
        https://github.com/hashicorp-services/tfm/blob/main/CHANGELOG.md
      EOS
    end
  end
  