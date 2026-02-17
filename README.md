# Mousticke Dev Platform

Opinionated Windows 11 → Linux-grade development environment with first-class aesthetics.

## What this delivers

- WSL2 Linux execution
- Zsh + Powerlevel10k
- Modern CLI tooling
- VS Code Remote – WSL
- Visual coherence across terminal + editor

## Install

### Windows (Admin)

```powershell
.\bootstrap.ps1
```

### Linux

```sh
chmod +x bootstrap.sh
```

```sh
./bootstrap.sh
```

Restart terminal, complete Powerlevel10k wizard, done.

```sh
exec zsh
```

## GPG Key

Choose:

- RSA 4096
- No expiry (or org policy)
- Name: Name
- Email: email@protonmail.com

```sh
gpg --list-secret-keys --keyid-format=long
```

Add the id tho the signingkey of the .gitconfig file.

For a given gpg key, the id is after the '/' at the `sec` line. Below : `30F2B65B9246B6CA`

```sh
sec   rsa4096/30F2B65B9246B6CA 2017-08-18 [SC]
      D5E4F29F3275DC0CDA8FFC8730F2B65B9246B6CA
uid                   [ultimate] Mr. Robot <your_email>
ssb   rsa4096/B7ABC0813E4028C0 2017-08-18 [E]
```

```sh
gpg --armor --export YOUR_KEY_ID
```

Add to GitHub.

Add the config file to gpg folder to make it work between Windows and WSL2

```sh
cp dotfiles/gpg.conf ~/.gnupg/
```

```sh
cp dotfiles/gpg-agent.conf ~/.gnupg/
```

```sh
gpgconf --kill gpg-agent
```

## Philosophy

- Linux correctness
- Zero snowflakes
- Calm visuals
- Fast feedback

---

# Final result (what you now own)

- One-command workstation bootstrap
- Visually premium terminal
- Linux-native tooling
- macOS-level UX parity
- Org-ready standardization

This is no longer a setup — it’s a **platform**.
