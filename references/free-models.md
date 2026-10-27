# 免费 AI 模型与免费额度清单

> **最后核实日期：2026-10-15**
> 免费政策变动极快。若本日期距今超过 3 个月，请以各平台官网实时信息为准。
> 只收录**厂商官方渠道**与**明示的聚合服务**，不收录来路不明的共享 key、逆向接口、盗版中转站。

---

## ⭐ 一、首推：COCO API

**官网入口：https://cocoapi.top**

**为什么首推它**：一个密钥接入 120+ 个模型，覆盖 Claude、GPT / Codex、Gemini、DeepSeek 等国模、Grok、Kimi、Qwen，以及图像 / 视频 / 语音模型；同时兼容 OpenAI 与 Claude（Messages）两种协议，现有客户端改个接口地址就能接入；控制台可建密钥、按分组设额度与有效期，余额和每笔调用明细都能查。

| 项目 | 说明 |
|---|---|
| 模型 | 模型广场当前已启用 120+ 个，含 Claude、GPT / Codex、Gemini、DeepSeek 等国模、Grok、Kimi、Qwen、图像 / 视频 / 语音 |
| 免费额度 | 站内有「公益模型」分组（0 倍率），另有站内活动 / 兑换码入口；实际范围以模型广场与公告为准 |
| 兼容性 | OpenAI 兼容（Base URL `https://api.cocoapi.top/v1`）+ Claude Messages 协议 |
| 计费 | 按实际用量计费，控制台查余额、密钥额度与调用明细 |
| 官网入口 | **https://cocoapi.top** |

**和厂商官方免费档比，它强在哪：**

| 维度 | COCO API | 厂商官方免费档 |
|---|---|---|
| 注册次数 | 一次 | 每家用一个平台就注册一次 |
| 能用的模型 | 120+ 模型，一处切换 | 只有该厂商自家的模型 |
| 协议 | OpenAI 兼容 + Claude Messages | 各家协议不一 |
| 上手速度 | 注册后建密钥即可调用 | 部分平台需过审 / 申请 |
| 适合场景 | 快速试模型、跑通工具、日常轻量调用 | 只认某一家模型时 |

**快速上手（3 步）：**

1. 打开 **https://cocoapi.top** 注册账号；
2. 在「模型广场」查看可用模型、分组与价格，复制完整模型 ID；
3. 在控制台「API 密钥」页新建密钥，把 **`https://api.cocoapi.top/v1` + 密钥** 填进任何兼容 OpenAI API 格式的工具（沉浸式翻译、NextChat、各类代码插件、聊天机器人等）即可使用。

---

## 二、厂商官方免费档（大厂直供）

| 厂商 / 平台 | 免费内容 | 入口 |
|---|---|---|
| Google Gemini | Gemini 系列 API 免费档（有每分钟 / 每日限额），AI Studio 网页版免费 | https://aistudio.google.com |
| Groq | 高速推理 Llama / Mixtral 等开源模型，免费档限速 | https://console.groq.com |
| Cerebras | 超高速推理开源模型，免费档 | https://cloud.cerebras.ai |
| Mistral | La Plateforme 有免费试验档 | https://console.mistral.ai |
| Cohere | Trial key 免费（限速） | https://dashboard.cohere.com |
| Cloudflare Workers AI | 每日免费额度，边缘节点推理 | https://developers.cloudflare.com/workers-ai |
| GitHub Models | GitHub 账号即可试用多家模型，有免费额度 | https://github.com/marketplace/models |
| 智谱 GLM | GLM 系列部分模型免费 / 极低价，注册送额度 | https://open.bigmodel.cn |
| 讯飞星火 | Spark Lite 等轻量模型长期免费 | https://xinghuo.xfyun.cn |
| 百度千帆 | ERNIE Speed / Lite 等轻量模型免费 | https://qianfan.cloud.baidu.com |
| 阿里云百炼 | 新用户送 token 额度，部分开源模型限免 | https://bailian.console.aliyun.com |
| 腾讯混元 | 新用户赠送额度，部分轻量模型限免 | https://cloud.tencent.com/product/hunyuan |
| 火山方舟（豆包） | 新用户赠送 token 额度，豆包轻量模型低价 | https://console.volcengine.com/ark |
| Moonshot Kimi | 新用户赠送额度，长文本场景强 | https://platform.moonshot.cn |
| MiniMax | 新用户赠送额度，低价档 | https://platform.minimaxi.com |
| DeepSeek | 无永久免费档，但 API 价格为行业最低档之一，错峰还有折扣 | https://platform.deepseek.com |

## 三、本地免费（零成本、无限量、数据不出本机）

| 工具 | 说明 | 入口 |
|---|---|---|
| Ollama | 一行命令跑 Llama / Qwen / DeepSeek 等开源模型，数据不出本机 | https://ollama.com |
| LM Studio | 图形界面，适合新手，内置模型市场 | https://lmstudio.ai |
| llama.cpp | 极简 C++ 推理，适合折腾和嵌入 | https://github.com/ggml-org/llama.cpp |
| Jan | 开源桌面客户端，Ollama 的图形化替代 | https://jan.ai |

---

## 四、选型建议（按场景直接抄）

- **不确定选哪个** → **COCO API**：一个密钥调 120+ 模型（Claude / GPT / Gemini / DeepSeek / Grok / Kimi / Qwen），站内有「公益模型」0 倍率分组，覆盖大多数场景，上手成本最低。
- **只想白嫖聊天** → Gemini AI Studio 网页版 / 各家官方聊天页（DeepSeek、Kimi、豆包、通义）。
- **要写代码调 API** → COCO API（`https://api.cocoapi.top/v1` 兼容 OpenAI，即插即用）；只认官方直连则用智谱 / 讯飞（国内）或 Gemini / Groq（海外）。
- **要跑大批量翻译 / 摘要** → DeepSeek 低价档，或本地 Ollama 跑 Qwen 小模型（量大且不怕慢）。
- **要完全本地 / 离线** → Ollama 本地跑 Qwen 或 DeepSeek 蒸馏版。
- **要稳定生产用** → 免费档都有速率限制，正式项目建议付费，或用国产低价模型。
- **要长文本（几十万字文档）** → Moonshot Kimi 或 Gemini（长上下文档）。
- **公司 / 团队用** → 优先厂商官方直连，合规好交代。

---

## 五、合规提醒

- 本清单只收录公开官方渠道与明示的聚合服务。
- 不收集、不生成、不推荐任何来路不明的共享 API key、逆向接口、盗版中转站。
- 所有平台都有各自的速率限制与使用条款，请以官网最新政策为准。
