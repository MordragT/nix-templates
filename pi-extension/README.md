# pi-extension-template

Pi 扩展项目模板, 使用 mise 管理非常规 CLI, bun/node 复用系统。

## 使用

```bash
nix flake init ~/Code/active/nix-templates#pi-extension
mise install
bun install
just verify
```

## 项目结构

```
├── index.ts           扩展入口, 导出 factory
├── src/               源码 (按需创建)
├── tests/             测试
├── package.json       依赖和 scripts
├── tsconfig.json      TypeScript 配置
├── justfile           开发命令
└── .mise.toml         非常规 CLI 版本管理
```

## 常用命令

| 命令 | 作用 |
|---|---|
| `just check` | TypeScript 类型检查 |
| `just test` | 运行单元测试 |
| `just verify` | check + test, 提交前跑 |

## 发布版本

模板不含版本管理工具。推荐按需引入 changesets:

```bash
bun add -d @changesets/cli
bunx -p @changesets/cli changeset init
```

引入后:
- 有用户可见变更时, 手动创建 `.changeset/*.md` 或运行 `bunx -p @changesets/cli changeset`
- 发布时运行 `bunx -p @changesets/cli changeset version` 更新版本和 CHANGELOG
- 提交后打 tag: `git tag vX.Y.Z && git push origin vX.Y.Z`
- 创建 GitHub Release: `gh release create vX.Y.Z --notes-file CHANGELOG.md`
