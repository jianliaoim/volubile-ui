
导航栏左右布局, 内容都居中, 使用 Flexbox 将元素撑到两边.
如果元素很多的话用 `rich-line` 将多个元素分组.

```coffee
outlineStyle =
  width: 400
  border: '1px solid #eee'

div className: 'demo-board',
  div className: 'navbar', style: outlineStyle,
    div className: 'nav-left', 'Left'
    div className: 'nav-right', 'Right'

div className: 'demo-board',
  div className: 'navbar', style: outlineStyle,
    div className: 'nav-left spring-board',
      span className: 'board-icon icon icon-audio'
      span className: 'board-text', 'Audio'
    div className: 'nav-right rich-line',
      span className: 'icon icon-audio'
      span className: 'icon icon-video'
```