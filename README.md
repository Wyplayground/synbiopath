# SynBioPath

合成生物学科研导航 —— 静态单页网站。

- `index.html`：网站主页（自包含单文件，图片/JS/CSS 全部内联）。
- `404.html`：找不到页面时的提示页。

## 部署方式（Cloudflare Pages，推荐）

1. 本仓库托管在 GitHub：`https://github.com/Wyplayground/synbiopath`
2. 登录 Cloudflare → Workers & Pages → Create → Pages → Connect to Git → 选本仓库。
3. 构建设置：Framework preset = `None`，Build command 留空，Build output directory = `/`。
4. 部署完成后得到 `xxx.pages.dev` 网址即上线；可在 Custom domains 绑定自有域名。

## 也可用 GitHub Pages

仓库 Settings → Pages → Source 选 `main` 分支、`/ (root)` 目录，保存即可，
网址为 `https://wyplayground.github.io/synbiopath/`。

> 说明：本版本用于海外托管（Cloudflare / GitHub Pages），不含中国大陆 ICP 备案信息。
> 大陆服务器 + 备案的版本见项目内 `2026_web_new_round/round 2/deploy/`。
