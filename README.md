# wechat miniapp release workflow

[![npm](https://img.shields.io/npm/v/wechat-miniapp-release-workflow?style=flat-square)](https://www.npmjs.com/package/wechat-miniapp-release-workflow)
[![license](https://img.shields.io/github/license/baranwang/wechat-miniapp-release-workflow.svg?style=flat-square)](./LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

微信小程序构建工作流

同步 git / npm 及微信小程序版本号，方便维护。

## 快速上手

### 安装

```bash
$ npm i wechat-miniapp-release-workflow -D
```

### 使用

修改 `package.json`

```json
{
  // ...
  "scripts": {
    "prerelease": "git pull && git checkout master", // 可选
    "release": "release-wechat"
  }
  // ...
}
```

## 说明

脚本环境基于 macOS 编写，windows 平台暂不适用 npm 版本，可自行 clone `release.sh` 文件，修改微信开发者工具路径。（欢迎 PR 适配版本）

请参考：[https://developers.weixin.qq.com/miniprogram/dev/devtools/cli.html](https://developers.weixin.qq.com/miniprogram/dev/devtools/cli.html)

## 参考

[vant-weapp](https://github.com/youzan/vant-weapp/blob/dev/build/release.sh)

## License

Apache-2.0 @ [baranwang](https://github.com/baranwang)
