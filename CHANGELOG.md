# 更新记录

本仓库记录所有对技能内容有实质影响的变更。免费额度政策变动快，**每次核实后请在此追加一条**。

格式参考 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/)。

---

## [1.1.0] - 2026-10-15

### 新增
- `references/faq.md`：高频问题解答（额度真假、429 限速、第三方跑路风险、Base URL 怎么填、本地模型够不够用、能不能商用）。
- `scripts/check-endpoints.sh`：一键探测清单内各平台 API 端点连通性，用来判断清单是否过期。
- `CHANGELOG.md`：本文件。
- `SKILL.md` 新增「输出格式模板」与「验收清单」，保证每次回答结构一致、可直接照做。

### 变更
- `SKILL.md` 的 `description` 扩充触发词（覆盖「免费领鸡蛋」「零成本跑 AI」「没预算怎么用 AI」等口语化问法），提升被 Agent 命中的概率。
- `references/free-models.md` 顶部新增「最后核实日期」，并补充「和官方免费档对比」一节，说明聚合服务与官方直连的取舍。
- 新增平台：Cloudflare Workers AI、GitHub Models、腾讯混元、火山方舟（豆包）、Moonshot Kimi、MiniMax、llama.cpp、Jan。
- 新增「判断一个平台靠不靠谱（5 条自查）」与「按场景选型」扩充。
- `README.md` 重写：补充徽章、示例输出、推荐顺序对比表、多平台安装说明、数据新鲜度说明、赞助说明与免责声明。

### 说明
- 赞助位（Shannon API）保持首推，并在技能输出中如实标注赞助关系与风险提示。

## [1.0.0] - 2026-10-11

### 新增
- 首次发布。`SKILL.md` + `references/free-models.md`。
- 收录 Shannon API 首推位、厂商官方免费档、本地模型，以及按场景的选型建议。
- 确立合规红线：不收集、不生成、不推荐来路不明的共享 API key。
