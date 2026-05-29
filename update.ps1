# 一键更新线上网站
# 作用：把本地对 index.html / 404.html 的改动提交并推送到 GitHub，
#       GitHub Pages 与 Cloudflare Pages 会在约 1 分钟内自动更新。
#
# 用法（在本目录打开 PowerShell）：
#   powershell -ExecutionPolicy Bypass -File .\update.ps1 "这次改了什么"
# 不写说明也行：
#   powershell -ExecutionPolicy Bypass -File .\update.ps1

param([string]$Message = "update site")

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

$changes = git status --porcelain
if (-not $changes) {
    Write-Host "没有检测到任何改动，无需更新。"
    exit 0
}

git add -A
git -c user.name="Wyplayground" -c user.email="Wyplayground@users.noreply.github.com" commit -m $Message
git push

Write-Host ""
Write-Host "已推送成功。约 1 分钟后这两个网站会自动更新："
Write-Host "  https://wyplayground.github.io/synbiopath/"
Write-Host "  https://synbiopath.omics-forever.workers.dev/"
