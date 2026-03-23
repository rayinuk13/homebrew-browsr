# 🍺 homebrew-browsr

Official Homebrew tap for [Browsr](https://github.com/yourusername/browsr) — the AI-powered Helium browser automation script generator.

---

## Install

```bash
brew tap yourusername/browsr
brew install browsr
```

Or in one line:

```bash
brew install yourusername/browsr/browsr
```

---

## Usage

```bash
# Set your API key (hidden input, AES-256-GCM encrypted)
browsr key

# Start interactive mode
browsr

# One-shot generation
browsr "open 10 tabs in chrome and load google.com in each"

# Generate + save to file
browsr "login to github" -o login.py

# Show all commands
browsr menu

# Update to latest version
browsr update
```

---

## Update

```bash
brew upgrade browsr
```

Or from within browsr:

```bash
browsr update
```

---

## Uninstall

```bash
brew uninstall browsr
brew untap yourusername/browsr
```

---

## Links

- [Browsr on GitHub](https://github.com/yourusername/browsr)
- [Browsr on PyPI](https://pypi.org/project/browsr/)
- [Helium docs](https://github.com/mherrmann/helium)
