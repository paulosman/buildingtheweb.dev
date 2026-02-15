# Building the Web

Static site for [buildingtheweb.dev](https://buildingtheweb.dev) - a book about the foundational ideas that made the modern internet possible.

Built with [Hugo](https://gohugo.io/).

## Local Development

### Prerequisites

- [Hugo](https://gohugo.io/installation/) (extended version)

### Run locally

```bash
hugo server --buildDrafts
```

The site will be available at `http://localhost:1313/`.

### Build for production

```bash
hugo --minify
```

Output goes to the `public/` directory.

## Adding a New Chapter

1. Create a new file in `content/chapters/`:

```bash
hugo new chapters/my-chapter.md
```

2. Set the front matter:

```yaml
---
title: "Chapter Title"
description: "A one-sentence description."
chapter_number: N
weight: N
---
```

3. Remove the chapter from `params.comingSoon` in `hugo.toml` once published.

## Deployment

The site is deployed to AWS:

- **S3** - static file hosting
- **CloudFront** - CDN and HTTPS termination
- **Route 53** - DNS
- **Terraform** - infrastructure management

### Deploy steps

1. Build the site:

```bash
hugo --minify
```

2. Sync to S3:

```bash
aws s3 sync public/ s3://YOUR_BUCKET_NAME --delete
```

3. Invalidate CloudFront cache:

```bash
aws cloudfront create-invalidation --distribution-id YOUR_DIST_ID --paths "/*"
```

### Infrastructure (Terraform)

Terraform configuration for the AWS infrastructure is managed separately. The key resources:

- S3 bucket with static website hosting enabled
- CloudFront distribution with the S3 bucket as origin
- Route 53 hosted zone and A/AAAA alias records pointing to CloudFront
- ACM certificate for `buildingtheweb.dev` (must be in `us-east-1` for CloudFront)

## Project Structure

```
├── hugo.toml              # Site configuration
├── content/
│   ├── _index.md          # Home page
│   ├── introduction.md    # Series introduction
│   ├── about.md           # About page
│   ├── contact.md         # Contact page
│   └── chapters/
│       ├── _index.md      # Chapters listing
│       └── load-balancing.md
├── themes/btw/            # Custom theme
│   ├── layouts/           # HTML templates
│   ├── static/css/        # Stylesheets
│   └── static/js/         # JavaScript
└── static/
    └── images/            # Site images
```
