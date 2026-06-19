# Homebrew Kubie-Go

[!License: ZLib](https://img.shields.io/badge/License-Zlib-lightgrey.svg)

This is a Homebrew tap for installing [**kubie-go**](https://github.com/stanislavtrubachev/kubie-go).

## What is kubie-go?

**kubie-go** is a tool for switching Kubernetes contexts and namespaces with per‑shell isolation. It lets you work with different clusters simultaneously in separate terminal tabs, without worrying about accidentally mixing environments.

Key features:
- **Per‑shell isolation**, each terminal session has its own independent context.
- **Multiple kubeconfig support**, load contexts from different files.
- **Built‑in interactive selector**, works without external dependencies (but uses fzf if available).
- **Static Go binary**, no external runtime required; just download and run.

## Installation:

### 1. Add this tap

```bash
brew tap stanislavtrubachev/kubie-go
```

### 2. Install kubie-go

```bash
brew install kubie-go
```

### 3. Verify the installation
```bash
kubie --version
```