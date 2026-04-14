# Marvicons

A collection of simple SVG icons for use across the site.

## Icon Specifications

### Dimensions
- ViewBox: `0 0 24 24`
- No explicit `width` or `height` attributes on the SVG element — size is controlled via CSS.

### Color
- Use `fill="currentColor"` on all filled paths/shapes.
- Use `stroke="currentColor"` on all stroked paths/shapes, never hardcoded color values.
- This lets CSS control icon color via the `color` property, so icons automatically adapt to light/dark themes and active/hover states without separate color variants.

### Style
- Simple line drawings — minimal, clean, no decorative detail.
- Rounded line caps and joins: `stroke-linecap="round"` and `stroke-linejoin="round"`.
- Avoid sharp corners unless the subject matter specifically requires them (e.g. a diamond shape).
- Consistent stroke width across the set — default to `stroke-width="2"`.

### Naming
- File names are lowercase, generic, and descriptive of what the icon represents.
- Use a single word where possible: `wrench.svg`, `star.svg`, `bell.svg`.
- For multi-word icons use hyphens: `arrow-right.svg`, `check-circle.svg`.

### File Location
- All icons live in `icons/` at the root of the repository.

## Workflow

Whenever a new icon is added:
1. Create the SVG file in `icons/`.
2. Add a matching card to `index.html` inside the `.grid` div, with the inline SVG and `data-name` set to the filename (without `.svg`).
3. Commit both files together.

## SVG Template

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <!-- paths here -->
</svg>
```

For filled icons (no stroke), use:

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
  <!-- paths here -->
</svg>
```
