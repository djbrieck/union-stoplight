# ──────────────────────────────────────────────────────────────────────────────
# site.md — Site configuration
# Fill in the fields below, then run:
#   python /path/to/SiteGenerator/generate.py /path/to/this-folder
# ──────────────────────────────────────────────────────────────────────────────


# ── Identity ──────────────────────────────────────────────────────────────────

name: "Union Stoplight"
github: "https://github.com/djbrieck/union-stoplight"


# ── Operator (who runs this unofficial site) ──────────────────────────────────

operator: "Brieck's Pro"
operator_url: "https://brieckspro.com/"
operator_support_url: "https://brieckspro.com/value-for-value/"


# ── Favicon ───────────────────────────────────────────────────────────────────
# letter    : single character shown in the favicon square
# font      : any Google Fonts name (for reference only — PIL uses system fonts)
# color     : text color  (#rrggbb)
# background: square background color (#rrggbb)

favicon:
  letter: "S"
  font: ""
  color: "#27F549"
  background: "#FF0000"


# ── Contact ───────────────────────────────────────────────────────────────────

location: "126 S Main St, Union, OR 97883"
phone: "(541) 562-5700"


# ── Hours ─────────────────────────────────────────────────────────────────────
# One line per entry, e.g. "Monday - Friday: 9AM to 5PM"

hours:
  - "Monday: Closed"
  - "Tuesday - Sunday: 11AM to 7:30PM"


# ── Links ─────────────────────────────────────────────────────────────────────
# Social media, review sites, etc.

links:
  - label: "Union Stoplight - Offical"
    url: "https://unionstoplight.toast.site/"
  - label: "Facebook: Union Stoplight"
    url: "https://www.facebook.com/profile.php?id=100063703503456"


# ── Menu ──────────────────────────────────────────────────────────────────────
# Links to menu files (PDF, HTML) or an external menu page.
# Remove this section entirely if not needed.

menu:
  - label: "Takeout Menu - PDF"
    url: "docs/UnionStoplightMenu.pdf"
  - label: "Takeout Menu - plain text"
    url: "docs/UnionStoplightMenu.html"


# ── Photos ────────────────────────────────────────────────────────────────────
# Files should live in the img/ folder next to this site.md.
# Remove this section entirely if not needed.

photos:
  - label: "Storefront"
    url: "img/Storefront.jpeg"
