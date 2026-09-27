# Going Dutch

A daily practice blog: one short story in Dutch, every day. Built as a static site with [Eleventy](https://www.11ty.dev/) and [Tailwind CSS](https://tailwindcss.com/).

## Prerequisites

- [Node.js](https://nodejs.org/) 20+
- npm

## Getting started

Install dependencies:

```bash
npm install
```

Run the site locally with live reload (rebuilds CSS and templates on change):

```bash
npm start
```

Build the production site into `_site`:

```bash
npm run build
```

## Project structure

- `content/` — pages, posts, includes, and data for the Eleventy site
- `styles/` — Tailwind CSS source
- `.eleventy.js` — Eleventy configuration
- `Dockerfile` — builds the site and serves it with nginx

## Deployment

The included `Dockerfile` builds the static site and serves it via nginx:

```bash
docker build -t going-dutch .
docker run -p 8080:80 going-dutch
```

## License

Licensed under the [MIT License](LICENSE).
