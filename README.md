# CubeOS Website

Public website for [get.cubeos.app](https://get.cubeos.app).

CubeOS is an open-source self-hosting OS that runs on any hardware — Raspberry Pi, x86_64, ARM64 SBCs, and any Linux machine.

Built with Hugo, served via Chainguard Nginx with content negotiation:
- `curl https://get.cubeos.app` returns `install.sh`
- Browsers get the landing page

## Development

```bash
hugo server -D
```

## Build

```bash
hugo --minify --gc --environment production
```

## Deploy

Push to `main` — GitLab CI builds the Hugo site, packages it into a Docker image, and deploys to DMZ nodes via AWX.
