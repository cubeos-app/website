# CubeOS Website

Public website for [get.cubeos.app](https://get.cubeos.app).

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
