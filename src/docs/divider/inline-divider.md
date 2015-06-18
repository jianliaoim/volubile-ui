
`inline-divider` 在行内生成分割线, 需要 `rich-line` 包裹.
实现的原理是用 Flexbox 的 `align-self: stretch`.

```coffee
div className: 'rich-line',
  div className: 'button is-primary', 'Button'
  span className: 'text', '文字'
  div className: 'inline-divider'
  div className: 'button is-primary', 'Button'
  span className: 'text', '文字'
```