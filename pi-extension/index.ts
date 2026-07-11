import type { ExtensionAPI } from "@earendil-works/pi-coding-agent"

export default function (pi: ExtensionAPI): void {
  pi.on("session_start", async () => {
    // 异步初始化: 刷新 token、拉取额度等耗时工作放这里, 不阻塞 factory
  })
}
