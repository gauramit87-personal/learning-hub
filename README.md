# Learning Hub

Static website of self-study tutorials on investing and the economy, ready for GitHub Pages.

## Layout

```
index.html                              Home page; lists every tutorial by category
investing/30-day-investing-handbook.html   30-day investing handbook
downloads/30-day-investing-handbook.pdf    PDF ebook of the handbook
assets/css/site.css                     Shared styles (screen and print/PDF)
tools/build-pdf.sh                      Regenerates a PDF from a tutorial page
```

## Publish on GitHub Pages

1. Create a new repository on GitHub and upload the contents of this folder (not the folder itself), so `index.html` is at the repository root.
2. In the repository, open **Settings → Pages**, set **Source** to "Deploy from a branch", choose `main` and `/ (root)`, and save.
3. After a minute or two the site is live at `https://<username>.github.io/<repository>/`.

## Add a tutorial

1. Copy `investing/30-day-investing-handbook.html` as a starting point and replace the lessons.
2. Add a card for it on `index.html` (a commented template is already there).
3. Build the PDF: `sh tools/build-pdf.sh investing/new-tutorial.html`.

For a new category such as Economy, copy the `<section class="category">` block on `index.html`, create a matching folder, and add the link to the top bar.
