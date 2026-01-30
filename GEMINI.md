# Project Context: Attajak (Hugo Blox Blog)

## Project Overview
This project is a personal blog and portfolio website built with **Hugo** (a fast static site generator), utilizing the **Hugo Blox Builder** (formerly Academic) "Creator's Blog" theme. It is configured for deployment on **Netlify**.

The site uses **Tailwind CSS** for styling (integrated via Hugo Blox modules and Node dependencies) and **Preact**. **Pagefind** is used for client-side search.

## Key Technologies
*   **Hugo:** Static Site Generator (Version ~0.154.1).
*   **Hugo Blox Builder:** Modular website builder/theme ecosystem for Hugo.
*   **Tailwind CSS:** Utility-first CSS framework.
*   **npm:** Node.js package manager (Version 10.7.0).
*   **Pagefind:** Static search library.
*   **Netlify:** Hosting and CI/CD platform.

## Directory Structure
*   `config/_default/`: Main Hugo configuration files (`hugo.yaml`, `menus.yaml`, etc.).
*   `content/`: Markdown files for site content (blog posts, pages, etc.).
*   `assets/`: Asset files (images, CSS, JS) processed by Hugo pipes.
*   `static/`: Static files copied directly to the build output (e.g., `uploads/resume.pdf`).
*   `layouts/`: HTML templates for overriding theme defaults (if any).
*   `public/`: Output directory for the generated site (created after build).
*   `netlify.toml`: Netlify build configuration and environment settings.
*   `package.json`: Node.js scripts and dependencies (Tailwind, Preact).
*   `go.mod`: Go module definitions for Hugo theme dependencies.

## Building and Running

### Prerequisites
*   **Go:** Required for Hugo modules (Version ~1.25.4).
*   **Node.js:** Required for Tailwind and other build tools (Version ~24.12.0).
*   **Hugo:** Extended version recommended.
*   **npm:** Package manager.

### Key Commands
All commands should be run from the project root.

*   **Install Dependencies:**
    ```bash
    npm install
    ```
    *Also downloads Hugo modules via Go.*

*   **Start Development Server:**
    ```bash
    npm run start
    ```
    *Access the site at `http://localhost:1313/`.*

*   **Build for Production:**
    ```bash
    npm run build
    ```
    *Generates the site in `public/` and indexes content with Pagefind.*

*   **Create New Content:**
    ```bash
    npm run new
    ```

*   **Update Dependencies:**
    ```bash
    npm run update
    ```
    *Updates both Node.js packages and Hugo modules.*

## Configuration
*   **Site Settings:** Edit `config/_default/hugo.yaml` to change the site title, base URL, language, and other core settings.
*   **Menus:** Edit `config/_default/menus.yaml` to modify the navigation links.
*   **Parameters:** Edit `config/_default/params.yaml` for theme-specific parameters.
*   **Deployment:** `netlify.toml` controls the build environment variables and commands for Netlify.

## Development Conventions
*   **Content:** Write content in Markdown (`.md`) within the `content/` directory. Structure content in subdirectories (e.g., `content/blog/`) to create sections.
*   **Images:** Place content-specific images in the same folder as the content file (page bundles) or in `assets/media/`.
*   **Tailwind:** Custom styles can likely be added via `assets/css/` if configured, or by extending the Tailwind config.
*   **Modules:** The theme is managed as a Go module. Avoid modifying `go.mod` manually unless adding new modules; use `hugo mod` commands instead.
