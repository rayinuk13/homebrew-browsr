# typed: false
# frozen_string_literal: true

class Browsr < Formula
  include Language::Python::Virtualenv

  desc "AI-powered Helium browser automation script generator for your terminal"
  homepage "https://github.com/rayinuk13/browsr"
  url "https://github.com/rayinuk13/browsr/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "80a3b0999dc5a0d8d6a3d7ffca2db03f584333280a6e4371ec99e9207faf79ff"
  license "MIT"
  version "1.2.0"

  depends_on "python@3.12"
  # Pre-compiled by Homebrew — avoids Rust/maturin build for cryptography
  depends_on "cryptography"

  # ── Pure-Python resources (sdist, built from source) ─────────────────────────
  # Rust packages (jiter, pydantic_core, selenium) are installed via pre-built
  # binary/universal wheels in the install block. cryptography/cffi via depends_on.

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/96/f0/5eb65b2bb0d09ac6776f2eb54adee6abe8228ea05b20a5ad0e4945de8aac/anyio-4.12.1.tar.gz"
    sha256 "41cfcc3a4c85d3f05c932da7c26d0201ac36f72abd4435ba90d0464a3ffed703"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz"
    sha256 "e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "helium" do
    url "https://files.pythonhosted.org/packages/c8/0d/c262ed0121de580bf83f9fe12feb490f1a10e2de9b6558e8b1f0c5086281/helium-7.0.0.tar.gz"
    sha256 "22165493a761089c6a12d4c1b936ae62b7744b8cae55fd2b1c6ce4a832ee529e"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/b4/15/203d537e58986b5673e7f232453a2a2f110f22757b15921cbdeea392e520/openai-2.29.0.tar.gz"
    sha256 "32d09eb2f661b38d3edd7d7e1a2943d1633f572596febe64c0cd370c86d52bec"
  end

  resource "outcome" do
    url "https://files.pythonhosted.org/packages/98/df/77698abfac98571e65ffeb0c1fba8ffd692ab8458d617a0eed7d9a8d38f2/outcome-1.3.0.post0.tar.gz"
    sha256 "9dcf02e65f2971b80047b377468e72a268e15c0af3cf1238e6ff14f7f91143b8"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/69/44/36f1a6e523abc58ae5f928898e4aca2e0ea509b5aa6f6f392a5d882be928/pydantic-2.12.5.tar.gz"
    sha256 "4d351024c75c0f085a9febbb665ce8c0c6ec5d30e903bdb6394b7ede26aebb49"
  end

  resource "PySocks" do
    url "https://files.pythonhosted.org/packages/bd/11/293dd436aea955d45fc4e8a35b6ae7270f5b8e00b53cf6c024c83b657a11/PySocks-1.7.1.tar.gz"
    sha256 "3f8804571ebe159c380ac6de37643bb4685970655d3bba243530d6558b799aa0"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "sortedcontainers" do
    url "https://files.pythonhosted.org/packages/e8/c4/ba2f8066cceb6f23394729afe52f3bf7adec04bf9ed2c820b39e19299111/sortedcontainers-2.4.0.tar.gz"
    sha256 "25caa5a06cc30b6b83d11423433f65d1f9d76c4c6a0c90e3379eaa43b9bfdb88"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/09/a9/6ba95a270c6f1fbcd8dac228323f2777d886cb206987444e4bce66338dd4/tqdm-4.67.3.tar.gz"
    sha256 "7d825f03f89244ef73f1d4ce193cb1774a8179fd96f31d7e1dcde62092b960bb"
  end

  resource "trio" do
    url "https://files.pythonhosted.org/packages/52/b6/c744031c6f89b18b3f5f4f7338603ab381d740a7f45938c4607b2302481f/trio-0.33.0.tar.gz"
    sha256 "a29b92b73f09d4b48ed249acd91073281a7f1063f09caba5dc70465b5c7aa970"
  end

  resource "trio-websocket" do
    url "https://files.pythonhosted.org/packages/d1/3c/8b4358e81f2f2cfe71b66a267f023a91db20a817b9425dd964873796980a/trio_websocket-0.12.2.tar.gz"
    sha256 "22c72c436f3d1e264d0910a3951934798dcc5b00ae56fc4ee079d46c7cf20fae"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "ba561c48a67c5958007083d386c3295464928b01faa735ab8547c5692e87f464"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  resource "websocket-client" do
    url "https://files.pythonhosted.org/packages/2c/41/aa4bf9664e4cda14c3b39865b12251e8e7d239f4cd0e3cc1b6c2ccde25c1/websocket_client-1.9.0.tar.gz"
    sha256 "9e813624b6eb619999a97dc7958469217c3176312b3a16a4bd1bc7e08a46ec98"
  end

  resource "wsproto" do
    url "https://files.pythonhosted.org/packages/c7/79/12135bdf8b9c9367b8701c2c19a14c913c120b882d50b014ca0d38083c2c/wsproto-1.3.2.tar.gz"
    sha256 "b86885dcf294e15204919950f666e06ffc6c7c114ca900b060d6e16293528294"
  end

  # ── Rust-compiled packages as pre-built wheels (no maturin/Rust needed) ──────

  # selenium: py3-none-any wheel contains pre-compiled selenium-manager binaries
  resource "selenium-wheel" do
    url "https://files.pythonhosted.org/packages/a8/d6/e4160989ef6b272779af6f3e5c43c3ba9be6687bdc21c68c3fb220e555b3/selenium-4.41.0-py3-none-any.whl"
    sha256 "b8ccde8d2e7642221ca64af184a92c19eee6accf2e27f20f30472f5efae18eb1"
  end

  # jiter: Rust extension, OS/arch-specific wheel
  resource "jiter-wheel" do
    on_macos do
      on_arm do
        url "https://files.pythonhosted.org/packages/c3/27/e57f9a783246ed95481e6749cc5002a8a767a73177a83c63ea71f0528b90/jiter-0.13.0-cp312-cp312-macosx_11_0_arm64.whl"
        sha256 "f917a04240ef31898182f76a332f508f2cc4b57d2b4d7ad2dbfebbfe167eb505"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/2e/30/7687e4f87086829955013ca12a9233523349767f69653ebc27036313def9/jiter-0.13.0-cp312-cp312-macosx_10_12_x86_64.whl"
        sha256 "0a2bd69fc1d902e89925fc34d1da51b2128019423d7b339a45d9e99c894e0663"
      end
    end
    on_linux do
      on_arm do
        url "https://files.pythonhosted.org/packages/cf/52/e5719a60ac5d4d7c5995461a94ad5ef962a37c8bf5b088390e6fad59b2ff/jiter-0.13.0-cp312-cp312-manylinux_2_17_aarch64.manylinux2014_aarch64.whl"
        sha256 "c1e2b199f446d3e82246b4fd9236d7cb502dc2222b18698ba0d986d2fecc6152"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/f8/4c/09b93e30e984a187bc8aaa3510e1ec8dcbdcd71ca05d2f56aac0492453aa/jiter-0.13.0-cp312-cp312-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
        sha256 "bdaba7d87e66f26a2c45d8cbadcbfc4bf7884182317907baf39cfe9775bb4d93"
      end
    end
  end

  # pydantic_core: Rust extension, OS/arch-specific wheel
  resource "pydantic_core-wheel" do
    on_macos do
      on_arm do
        url "https://files.pythonhosted.org/packages/aa/32/9c2e8ccb57c01111e0fd091f236c7b371c1bccea0fa85247ac55b1e2b6b6/pydantic_core-2.41.5-cp312-cp312-macosx_11_0_arm64.whl"
        sha256 "070259a8818988b9a84a449a2a7337c7f430a22acc0859c6b110aa7212a6d9c0"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/5f/5d/5f6c63eebb5afee93bcaae4ce9a898f3373ca23df3ccaef086d0233a35a7/pydantic_core-2.41.5-cp312-cp312-macosx_10_12_x86_64.whl"
        sha256 "f41a7489d32336dbf2199c8c0a215390a751c5b014c2c1c5366e817202e9cdf7"
      end
    end
    on_linux do
      on_arm do
        url "https://files.pythonhosted.org/packages/68/b8/a01b53cb0e59139fbc9e4fda3e9724ede8de279097179be4ff31f1abb65a/pydantic_core-2.41.5-cp312-cp312-manylinux_2_17_aarch64.manylinux2014_aarch64.whl"
        sha256 "e96cea19e34778f8d59fe40775a7a574d95816eb150850a85a7a4c8f4b94ac69"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/0d/76/941cc9f73529988688a665a5c0ecff1112b3d95ab48f81db5f7606f522d3/pydantic_core-2.41.5-cp312-cp312-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
        sha256 "eceb81a8d74f9267ef4081e246ffd6d129da5d87e37a77c9bde550cb04870c1c"
      end
    end
  end

  def install
    # system_site_packages: true lets virtualenv inherit Homebrew's cryptography
    venv = virtualenv_create(libexec, "python3.12", system_site_packages: true)
    venv_python = libexec/"bin/python3.12"
    pip_install = [venv_python, "-m", "pip", "install", "--no-deps", "--quiet"]

    # Install Rust-compiled packages from pre-built wheels (zero Rust/maturin needed)
    resource("selenium-wheel").stage    { system(*pip_install, Dir["*.whl"].first) }
    resource("jiter-wheel").stage       { system(*pip_install, Dir["*.whl"].first) }
    resource("pydantic_core-wheel").stage { system(*pip_install, Dir["*.whl"].first) }

    # Install all pure-Python resources from source sdists
    wheel_resources = %w[selenium-wheel jiter-wheel pydantic_core-wheel]
    resources.each do |r|
      next if wheel_resources.include?(r.name)
      r.stage { system(*pip_install, ".") }
    end

    # Install browsr itself and expose the binary
    system(*pip_install, buildpath)
    bin.install_symlink libexec/"bin/browsr"
  end

  test do
    assert_match "BROWSR", shell_output("#{bin}/browsr menu")
  end
end
