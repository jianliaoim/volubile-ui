
Volubile UI from Talk by Teambition
----

Home Page and components http://ui.talk.ai/volubile-ui/

![](./images/volubile-400.png)

简聊项目开发中的 UI 组件化方案. 代码参与社区交流, 但界面风格由公司设计团队控制.

### Usage

```bash
npm i --save volubile-ui
```

Import module in JavaScript in Webpack:

```coffee
require('volubile-ui/ui/index.less')
```

Import module in LESS in Webpack:

```less
@import '~volubile-ui/ui/index'
```

### Developing

* Development

```text
npm i
gulp html
webpack-dev-server --hot
```

* Production

```text
gulp buld
gulp rsync
```

### License

MIT
