# 🍺 homebrew-browsr

Official Homebrew tap for [Browsr](https://github.com/rayinuk13/browsr) — the AI-powered Helium browser automation script generator.

---

## Install

```bash
brew tap rayinuk13/browsr
brew install browsr
```

Or in one line:

```bash
brew install rayinuk13/browsr/browsr
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
brew untap rayinuk13/browsr
```

---

## Links

- [Browsr on GitHub](https://github.com/rayinuk13/browsr)
- [Browsr on PyPI](https://pypi.org/project/browsr/)
- [Helium docs](https://github.com/mherrmann/helium)
