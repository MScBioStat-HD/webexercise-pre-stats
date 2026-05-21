# MScBioStat Pre-Stats Exercises

This repository contains a Quarto-based website with interactive pre-statistics exercises for the MSc BioStat context. The exercises are written in R Markdown and use the `webexercises` package together with custom CSS and JavaScript assets.

## Overview

The project is structured as a small Quarto website that publishes a collection of exercise blocks, a precourse section, and final exercises. Content is primarily authored in German and rendered as HTML for web delivery.

## Repository Structure

- `_quarto.yaml` — Quarto website configuration, sidebar, theme, and asset inclusion.
- `index.Rmd` — homepage content.
- `exercises/` — exercise source files such as `block1.rmd` through `block8.rmd`, `precourse.rmd`, and `final1_5.rmd`.
- `exercises/images/` — image assets used inside the exercise content.
- `include/webex.css` — custom styles for interactive exercise elements.
- `include/webex.js` — custom JavaScript for answer checking and solution toggles.
- `.github/workflows/publish.yaml` — GitHub Actions workflow for rendering and publishing the site to `gh-pages`.

## Local Development

From the repository root, you can preview the website locally with live reload:

```bash
quarto preview
```

To render the full site without starting a local preview server:

```bash
quarto render
```

## Publishing

The repository includes a GitHub Actions workflow at `.github/workflows/publish.yaml` that runs on every push to `main`.

That workflow:

1. checks out the repository,
2. installs Quarto and R,
3. installs the required R packages, and
4. renders and publishes the site to the `gh-pages` target.

## Content Notes

- Exercise content is authored in `.rmd` files under `exercises/`.
- Interactive elements are implemented with the `webexercises` package.
- The site sidebar is configured in `_quarto.yaml` and currently links the precourse material, blocks 1–8, and the final exercise set.
