---
title: "Markdown"
weight: 2
# geekdocFlatSection: false
# geekdocToc: 6
# geekdocHidden: false
---

Some fields in Courses will render as markdown (they are marked when you edit the Course)

That is, you can use Markdown syntax to introduce lists like so:

```markdown
# Some heading
Some text

- list item 1
- list item 2
- list item 3

1. list item 1
42. list item 2
3. list item 3
```
Which will render as: 

# Some heading
Some text

- list item 1
- list item 2
- list item 3

1. list item 1
42. list item 2
3. list item 3

The [Redcarpet gem](https://github.com/vmg/redcarpet) is used to render the markdown, with no extensions.
Keep it simple.
