# Publishing Browsr to Homebrew

Follow these steps to get `brew install rayinuk13/browsr/browsr` working.

---

## Step 1 — Publish browsr to PyPI

Homebrew fetches packages from PyPI. You must publish browsr there first.

### 1a. Register on PyPI
Go to https://pypi.org/account/register/ and create an account.

### 1b. Install build tools
```bash
pip install build twine
```

### 1c. Build the package
From inside your `browsr/` folder:
```bash
python -m build
```
This creates `dist/browsr-1.2.0.tar.gz` and `dist/browsr-1.2.0-py3-none-any.whl`.

### 1d. Upload to PyPI
```bash
twine upload dist/*
```
Enter your PyPI username and password (or API token).

Your package is now live at: `https://pypi.org/project/browsr/`

---

## Step 2 — Get the real SHA256

After uploading, get the sha256 of the `.tar.gz` from PyPI:

```bash
curl -s https://pypi.org/pypi/browsr/json | python3 -c "
import sys, json
data = json.load(sys.stdin)
for f in data['urls']:
    if f['filename'].endswith('.tar.gz'):
        print('sha256:', f['digests']['sha256'])
        print('url:', f['url'])
"
```

Copy the sha256 — you'll need it in Step 3.

---

## Step 3 — Generate the correct resource blocks

Each Python dependency needs its own sha256 in the formula. Use `homebrew-pypi-poet` to auto-generate them:

```bash
# Create a clean virtual environment
python3 -m venv /tmp/fresh-env
source /tmp/fresh-env/bin/activate

# Install poet + browsr
pip install homebrew-pypi-poet browsr

# Generate the formula (or just the resource blocks)
poet -f browsr > browsr.rb         # Full formula
# or
poet browsr                         # Just the resource blocks
```

Copy the resource blocks into `Formula/browsr.rb`, replacing the existing ones.

Also update the `url` and `sha256` at the top of the formula with the values from Step 2.

---

## Step 4 — Create the GitHub tap repo

1. Go to https://github.com/new
2. Name it **exactly**: `homebrew-browsr`
   (Homebrew requires the `homebrew-` prefix)
3. Make it **public**
4. Push the contents of this `homebrew-browsr/` folder to it:

```bash
cd homebrew-browsr
git init
git add .
git commit -m "Initial tap"
git branch -M main
git remote add origin https://github.com/rayinuk13/homebrew-browsr.git
git push -u origin main
```

---

## Step 5 — Test the tap locally

```bash
# Test installing directly from the formula file
brew install --build-from-source Formula/browsr.rb

# Run the test block
brew test browsr

# If it works, uninstall and test via tap
brew uninstall browsr
brew tap rayinuk13/browsr
brew install rayinuk13/browsr/browsr

# Verify
browsr menu
```

If something goes wrong, debug with:
```bash
brew install --verbose --debug rayinuk13/browsr/browsr
```

---

## Step 6 — (Optional) Submit to homebrew-core

Once your package is stable and well-known, you can submit to `homebrew-core` so users can install without adding a tap:

```bash
brew install browsr   # (no tap needed)
```

Steps:
1. Run `brew audit --new-formula Formula/browsr.rb` and fix any warnings
2. Fork https://github.com/Homebrew/homebrew-core
3. Add `Formula/browsr.rb` to your fork
4. Open a PR with title: `browsr 1.2.0 (new formula)`
5. Wait for review (can take days to weeks)

---

## Keeping the formula updated

The GitHub Action in `.github/workflows/update-formula.yml` auto-checks PyPI daily and opens a commit when a new version is detected.

To trigger it manually after a new release:
- Go to your `homebrew-browsr` repo on GitHub
- Click **Actions** → **Update Formula** → **Run workflow**

Or manually update `Formula/browsr.rb`:
1. Bump `version`, `url`, `sha256`
2. Re-run `poet -f browsr` to regenerate resource blocks
3. Commit and push

---

## Quick reference — after every new browsr release

```bash
# 1. Bump version in browsr/setup.py and browsr/browsr.py (VERSION = "x.y.z")
# 2. Build and upload to PyPI
python -m build && twine upload dist/*

# 3. Get new sha256
curl -s https://pypi.org/pypi/browsr/json | python3 -c "..."

# 4. Regenerate resources
pip install homebrew-pypi-poet browsr==x.y.z && poet -f browsr

# 5. Update Formula/browsr.rb with new version + sha256 + resources
# 6. git commit -m "browsr x.y.z" && git push
```

Or just let the GitHub Action do steps 3–6 automatically.
