---
name: Portfolio Site Rebuild
overview: Rebuild gabrielagarza.studio using semantic HTML and a shared CSS stylesheet, replacing image-based content with real text while preserving the minimalist aesthetic.
todos:
  - id: setup
    content: Create folder structure and shared CSS file with variables and base styles
    status: completed
  - id: home
    content: Build home page with real HTML text, navigation, and hero graphic
    status: completed
  - id: works
    content: Build works page with CSS Grid project cards
    status: completed
  - id: project-template
    content: Build project page template with image gallery and lazy loading
    status: completed
  - id: remaining-pages
    content: Create remaining project pages and about page
    status: completed
  - id: responsive
    content: Add responsive CSS for mobile and tablet
    status: completed
  - id: cleanup
    content: Reorganize images, test, and remove old files
    status: completed
isProject: false
---

# Portfolio Website Rebuild

## Goals

- Replace image-based layouts with real HTML text (SEO, accessibility, maintainability)
- Create a shared stylesheet to eliminate repeated CSS
- Preserve the minimalist black/white aesthetic with clean typography
- Ensure responsive design works properly on all devices
- Keep project images but structure them in a proper gallery layout

## Site Structure

```
gabrielagarza.studio/
├── index.html          # Home page
├── about.html          # About page  
├── works.html          # Projects grid
├── projects/
│   ├── velo.html       # Individual project pages
│   ├── east-sixth.html
│   ├── epi.html
│   └── extra.html
├── css/
│   └── style.css       # Single shared stylesheet
├── images/             # Renamed from Works/ for clarity
│   ├── home/
│   ├── projects/
│   └── favicons/
└── fonts/              # If using custom fonts (optional)
```

## Design Approach

### Typography

- Use a serif font for the main heading (similar to current "GABRIELA GARZA")
- Sans-serif for navigation and body text
- System fonts or Google Fonts (e.g., Playfair Display + Inter)

### Layout Strategy

- CSS Grid for the works page (4-column project grid)
- Flexbox for navigation and simple layouts
- CSS custom properties (variables) for consistent spacing/colors

### Navigation

- Real text links with hover states
- Consistent header across all pages
- "Back to Works" link on project pages

## Key Components

### Home Page (`index.html`)

```html
<header class="home-header">
  <h1>Gabriela Garza</h1>
  <blockquote>"The sun never knew how great it was..."</blockquote>
  <nav>
    <a href="about.html">About Me</a>
    <a href="works.html">Works</a>
  </nav>
</header>
<aside class="hero-graphic">
  <!-- Abstract geometric SVG or optimized image -->
</aside>
```

### Works Page (`works.html`)

```html
<nav class="site-nav">
  <a href="index.html">Home</a>
</nav>
<main class="projects-grid">
  <article class="project-card">
    <a href="projects/velo.html">
      <img src="images/projects/velo-thumb.jpg" alt="Velo project">
      <h2>Velo</h2>
      <time>Fall 2024</time>
    </a>
  </article>
  <!-- More project cards -->
</main>
```

### Project Page (e.g., `projects/velo.html`)

```html
<nav class="site-nav">
  <a href="../works.html">Back to Works</a>
</nav>
<article class="project">
  <header>
    <h1>Velo</h1>
    <time>Fall 2024</time>
  </header>
  <div class="project-images">
    <img src="../images/projects/velo/velo1.jpg" alt="..." loading="lazy">
    <!-- More images with lazy loading -->
  </div>
</article>
```

## CSS Architecture (`css/style.css`)

```css
/* Variables */
:root {
  --color-black: #000;
  --color-white: #fff;
  --font-serif: 'Playfair Display', Georgia, serif;
  --font-sans: 'Inter', system-ui, sans-serif;
  --spacing: 2rem;
}

/* Base styles, typography, navigation, grid, project gallery */
```

## Migration Steps

1. **Create folder structure** and new `css/style.css`
2. **Build home page** with real text, navigation, and the geometric graphic
3. **Build works page** with CSS Grid layout for project cards
4. **Build one project template** (e.g., Velo) with image gallery
5. **Duplicate template** for other projects (East Sixth, EPI, Extra)
6. **Build about page** with real text content
7. **Reorganize images** into logical folders
8. **Add responsive breakpoints** for mobile/tablet
9. **Test and optimize** (lazy loading, image compression)

## What Gets Preserved

- All project images (just reorganized)
- The geometric home graphic (as an optimized image or SVG)
- Favicon files
- CNAME and robots.txt

## Improvements Over Current Site

- Real, selectable, searchable text
- Shared CSS (update once, applies everywhere)
- Proper semantic HTML (better accessibility and SEO)
- Native lazy loading for images
- Visible, styled navigation (no invisible hotspots)
- Responsive design that works reliably on mobile

