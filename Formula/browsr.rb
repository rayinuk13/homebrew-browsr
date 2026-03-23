# typed: false
# frozen_string_literal: true

class Browsr < Formula
  include Language::Python::Virtualenv

  desc "AI-powered Helium browser automation script generator for your terminal"
  homepage "https://github.com/yourusername/browsr"
  url "https://files.pythonhosted.org/packages/source/b/browsr/browsr-1.2.0.tar.gz"
  sha256 "25ea08c871471674b0812578bd9d8c68e2187cec4820982d64c03929e3dc6a69"
  license "MIT"
  version "1.2.0"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "PLACEHOLDER"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "PLACEHOLDER"
    sha256 cellar: :any_skip_relocation, ventura:       "PLACEHOLDER"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "PLACEHOLDER"
  end

  depends_on "python@3.12"

  # ── Python dependencies (pinned for reproducibility) ──────────────────────
  # Generated with: poet -f browsr
  # Regenerate after version bumps: pip install homebrew-pypi-poet && poet -f browsr

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/source/a/anyio/anyio-4.3.0.tar.gz"
    sha256 "f75253795a87df48568485fd18cdd2a3fa5c4f7c5be8e5e36637733fce06fed6"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/source/c/certifi/certifi-2024.2.2.tar.gz"
    sha256 "ab7aa2232d6a016006bb965979b2b48688ff4a9b6a8b8ea0f7b027e769ffffc4"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/source/c/cffi/cffi-1.16.0.tar.gz"
    sha256 "bcb3ef43e58665bbda2fb198698fcae6776483e0c4a631aa5647806c25e02cc0"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/source/c/cryptography/cryptography-42.0.5.tar.gz"
    sha256 "6d0e54b5b4d8eb5d5b28e870c6b0a80415db03e6253e95b70e8d65b4e23b7e04"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/source/d/distro/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/source/h/h11/h11-0.14.0.tar.gz"
    sha256 "8f19fbbe99e72420ff35c00b27a34cb9937e902a8b810e2c88300c9f0a1178e6"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/source/h/httpcore/httpcore-1.0.4.tar.gz"
    sha256 "cb2839ccfcba0d2d3c1131d3c3e26dfc327326fbe7a5dc0dbfe9f6c9d9e594eb"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/source/h/httpx/httpx-0.27.0.tar.gz"
    sha256 "a0cb88a46f32dc874e04ee956e4c2764aba2aa228f650b06788ba6bda2962ab5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/source/i/idna/idna-3.7.tar.gz"
    sha256 "028ff3aadf0609c1fd278d8ea3089299412a7f8aa57d337f47f7be0d5eba1662"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/source/j/jiter/jiter-0.4.1.tar.gz"
    sha256 "d1f2c31dcd8ef8da757b0e2f91fa15b3c5b9a75ef3e1dfeef8db3c4ed71d2e2b"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/source/o/openai/openai-1.30.0.tar.gz"
    sha256 "4bb65a8a5b4b6f1e9e6f29d34ec28e78f7bc0a1c0ac77c4f7e65b67f3b4b2e51"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/source/p/pycparser/pycparser-2.22.tar.gz"
    sha256 "49aac49dc4782cb04f58986e81ea0b4768fdd3996411782bc040c3b6e4c4e7d3"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/source/p/pydantic/pydantic-2.7.1.tar.gz"
    sha256 "e029badca45266732a9a79898a15ae2e8b14840b1eabbb25844be28f0300ef09"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/source/p/pydantic_core/pydantic_core-2.18.2.tar.gz"
    sha256 "26ca695eeee5f9f1aeeb211ffc12f10bcb6f71e2989988fda61dabd65db878d4"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/source/s/sniffio/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3a579986dc8ee9a2bd74c18b46e1e1d68"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/source/t/tqdm/tqdm-4.66.4.tar.gz"
    sha256 "e4d936c9de8727928f3be6079590e97d9abfe8d39a590be678eb5919ffc186bb"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/source/t/typing_extensions/typing_extensions-4.11.0.tar.gz"
    sha256 "83f085bd5ca59c80295fc2a82ab5dac679cbe02b9f33f7d83af68e241bea51b0"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # Test that browsr runs and shows version
    assert_match "#{version}", shell_output("#{bin}/browsr --version 2>&1", 1)
    # Test that menu command works
    assert_match "BROWSR", shell_output("#{bin}/browsr menu")
    # Test that it requires an API key when none is configured
    assert_match "API key", shell_output("#{bin}/browsr 'test task' 2>&1", 1)
  end
end
