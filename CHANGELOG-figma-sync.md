# YCV Edit Copilot Prototype — Figma 同步修改紀錄

- 檔案：`edit-copilot-prototype.html`（素材在 `assets/icons/`）
- Figma：`ycv_new_UI`（7vSvilA89FLbeQGMqQwFAJ），section 493-70350，Dark mode
- 線上版：https://vitalinpf.github.io/ycv_copilet/edit-copilot-prototype.html
- 做法：每次修改都以新的 override 區塊（vNNN）加在最後一個 `</style>`／`</script>` 前，括號內為對應版本號

---

## 1. 開場 Sheet（Meet Video Copilot）

- 標題 **17px**（v170，原 18px），漸層 `#39D5F4 → #399FF5 (50.48%) → #A38BFF`；隱藏標題旁 logo（v139）
- 副標「Tell me how you’d like to edit your video.」12px／16px 白字，與下方 list 間距 8px（v141–v143）
- Suggestion list：直排、間距 6px；每列 padding 10、圓角 10、底色 `rgba(255,255,255,.06)`、文字 11px／15px，**上下置中**
- 第一列文字改為「Add a warm filter for a cozy, golden tone」
- **Suggestion icon（v141）**
  - 原本多層絕對定位 SVG 疊圖 → 改為**每顆一張 4× PNG**（96×96，顯示 24×24），解決比例跑掉
  - `icon-sug2-effect@4x.png`：星星全白（依需求，Figma 原檔星星為藍色）
  - `icon-sug2-color@4x.png`
  - `icon-sug2-resize@4x.png`：依 Figma 最新版重切（video_expansion 框 + 右下 play 鈕：白圓底、深色三角）

- **Suggestion 只出現一次（v167）**：使用者送出任何訊息（包括點 suggestion）後，suggestion list 和「Tell me how you’d like to edit your video.」都不再出現（重新開 sheet 也一樣）
  - 切換 demo scenario／Reset 時會偵測（v169）：這次開頁後**點過 sug-list** → 繼續隱藏 list 和該句；**沒點過** → 恢復顯示。重新整理頁面才重置偵測

## 1-1. 任務完成訊息

- **每個完成的任務後面都有「Edit More ›」（v167）**：取消原本只在 Edit More scenario 才顯示的限制
  - 點擊後**只關掉聊天視窗**（v170，不再開啟工具）
  - 「Edit More」前只留一個一般空格，拿掉原本多的 10px 間距（v170）
  - 未完成的情況（中途停止、Undo、credits 不足、不支援的要求）不顯示
- **對話保留在原本的聊天視窗（v168）**：任務完成後，關掉再打開 sheet（包括點 Edit More 關掉），先前的對話都還在，可以接著聊
  - 取消 v27「完成任務後重新開 Copilot 就開新對話」與「關閉 sheet 後清空對話」
  - Edit More scenario（demo 5）點 Edit More 不再清空回到開頭
  - 只有重新整理頁面（等同重開 app）或切換 demo scenario／Reset 時才清空

## 1-2. 預覽畫面

- **Compare 按鈕拿掉（v171）**：任務完成後預覽右下角不再出現 Compare（按住比較前後）按鈕，相關「Hold Compare…」提示文字一併移除

## 2. Credit icon

- `icon-credit.svg` 解析度不足 → 改用 **`icon-credit@4x.png`**（64×64，顯示 16px）
- 全部使用處一起替換：sheet 標題的 credit chip、Credits 頁 header、價目列、Balance

## 3. 輸入列（in-row）（v145–v147）

- `#in-box`：padding `8px 6px 8px 14px`、min-height 40、底色 `#252B31`、邊框 `.6px #3D5C66`
- 圓角統一 `16px`：單行（v175，原 66px 膠囊形）、多行（v176，原 20px）
- Placeholder「Describe what you'd like to edit」顏色 `#96B0B9`，**上下置中**（textarea padding 3px 0、line-height 18px）
- 麥克風按鈕 26×24、padding 4、icon 18×16
- History／Send 按鈕 40px、padding 11；History icon 換新圖、icon 全白

## 4. Credits 頁（v140、v148）

- 標題「Your Balance」；價格顯示為「-N」，不顯示金幣
- 價目列與 FAQ 列：滿版、`.6px rgba(235,235,236,.12)` 分隔線
- 區塊標題 Credit costs／FAQ（v170，依 Figma 461:117819）：16px Bold、主文字白色、「Credit costs」（v173，原 Pricing）、「FAQ」（v172：維持全大寫），不再是 12px 灰色全大寫
- Credit costs 最後一列（Free）下方加一條分隔線，與其他列相同 `.6px rgba(235,235,236,.12)`（v174）
- 範例說明 `.eg`：`font-weight: normal`，`.eg b` 顏色 `#96B0B9`

## 5. Credits ／ History 頁頂部統一

- Credits 頁原本疊了兩條 grab（半透明疊加看起來較亮）→ 移除重複的那條，兩頁都只有一條白色 20% grab
- History 的 hd 比 Credits 矮 4px → 以 Credits（Figma）為準統一：
  - hd 高度、標題位置相同
  - 返回鍵統一為 24px 箭頭
- **所有頁面的 credit chip**（`.f-credit`、`.cr-chip`，v164–v166）統一：寬度不固定、由內容撐開，高 24、`padding: 4px 6px 4px 4px`、間距 4
  - 涵蓋開場 Sheet、對話中 Sheet、History（另設 `right: 16px`）及全部 7 個 demo scenario
  - 避免餘額位數少時（如 Scenario 7 Not enough credits 的「6」）右側留白過多
- Credits 頁右上角的 credit chip **隱藏**（下方 Your Balance 已顯示餘額）（v164）

## 6. History 內容

- 假資料改為真實英文對話，移除中文：
  - Make it brighter／Trim to 8 seconds／Smooth skin and slim my face
  - 回覆統一為「I have successfully applied …」

## 7. Look 卡片（v144）

- 卡片 77×120、間距 8、圖片高 102.86px、名稱 7.71px
- Best Match 標籤：底色 `#28B1DE`、文字深色 `#212127`（ycv/04）
- 選取狀態：外框 `2px #28B1DE`
- 卡片列 `.lookpick` padding `0 16px 0px`（v177，原 `0 16px 10px`）

## 8. Stop confirm 彈窗（v149）

- 背景黑玻璃：`rgba(0,0,0,.75)` + `backdrop-filter: blur(4px)`

## 9. Copilot FAB（cp-fab）（v150）

- **Idle**：36px、padding 5、圓角 20、漸層 `135deg #39D5F4 15% → #399FF5 51.8% → #5E39EB 87.9%`、陰影 `drop-shadow(0 4px 4px rgba(0,0,0,.25))`，icon 白色
- **Processing**：不顯示陰影與外圈弧線；旁邊顯示白色狀態 chip（10px `#1A1A1F` 文字 + 旋轉藍色 cursor icon），內容為目前步驟（如「Brightening…」）

## 10. Feedback（讚／倒讚）

### cp-fab 旁的「Was it helpful?」chip（v154–v156、v170）

| 狀態 | 底色 | icon |
|---|---|---|
| Off | `#E8E8E8` | `#1A1A1F` 線條 |
| On | `#1A1A1F` | 白色線條 |

- 只保留白色 chip：舊版 v53 的深灰「Was this helpful?」pill（`#fb-pill`）會偶爾跳出，已停用（v170）

- chip：padding `2px 3px 2px 10px`、間距 6、10px `#212127` 文字；按鈕 22px、圓角 17.96
- 按下後**不跳中央 toast**，chip 原位顯示「Thanks for the feedback」＋已選的 icon，約 1.8 秒後收起；寬度隨內容（max-content）

### 聊天視窗內的 feedback（v162）

| 狀態 | 底色 | icon |
|---|---|---|
| Off | `rgba(22,23,26,.2)`（bg/m-bg-alpha-20，v170） | 白色線條 |
| On | **白色** `#FFFFFF` | **深色線條** |

---

## 新增／更新的素材（`assets/icons/`）

| 檔案 | 用途 |
|---|---|
| `icon-credit@4x.png` | Credit 金幣（4×） |
| `icon-sug2-effect@4x.png` | 建議列 icon：濾鏡特效（4×） |
| `icon-sug2-color@4x.png` | 建議列 icon：色彩（4×） |
| `icon-sug2-resize@4x.png` | 建議列 icon：尺寸／裁剪（4×，Figma 最新版） |
| `icon-sug2-expansion.svg`、`icon-sug2-play-bg.svg`、`icon-sug2-play-tri.svg` | Resize icon 的 Figma 原始圖層 |
| `icon-fb-like*.svg`、`icon-fb-dislike*.svg` | Feedback icon；`-dark` 為 chip off（`#1A1A1F`），`-on` 為 on（白） |
| `icon-fab-video-white.svg` | FAB 白色 icon |
| `icon-cursor-brightblue.svg` | FAB processing chip 旋轉 icon |
| `icon-toast-check.svg` | Feedback toast 樣式（保留，目前未使用） |
