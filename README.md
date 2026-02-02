# Homebrew Tap

This tap hosts Homebrew formulae maintained by Pix

## Software

- [pssh](https://github.com/Pix-xiP/pssh) - A config aware TUI for SSH
- [weave](https://github.com/Pix-xiP/weave) - An orchesration tool

## Usage

```bash
brew tap pix-xip/tap
brew install pssh
```

## Adding/Updating Formulae

Formulae live in `Formula/`. For a new release of `pssh`:

1. Tag a release in `Pix-xiP/pssh` (e.g. `v0.1.0`).
2. Download the source archive and compute its sha256:

   ```bash
   curl -L -o pssh.tar.gz https://github.com/Pix-xiP/pssh/archive/refs/tags/v0.1.0.tar.gz
   shasum -a 256 pssh.tar.gz
   ```

3. Update `Formula/pssh.rb` with the new `version` and `sha256`.
