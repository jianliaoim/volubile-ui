banner使用Flexbox进行布局，含有`is-leading`和`name`两个基本元素
向`name`添加`full`类可以使`name`填充容器：

```coffee
div className: 'demo-board',
  div className: 'banner rich-line',
    span className: 'is-leading icon icon-sharp'
    span className: 'name', '公告板'
  div className: 'banner rich-line',
    span className: 'is-leading icon icon-sharp'
    span className: 'name', 'icon跟随的情况'
    span className: 'icon-unread', 1
  div className: 'banner rich-line',
    span className: 'is-leading icon icon-sharp'
    span className: 'name full', 'icon在最右端的情况'
    span className: 'icon-unread', 1
```
