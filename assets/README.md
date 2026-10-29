# Assets — 替換清單 / Replacement Checklist

把檔案放進對應資料夾、用下表的檔名命名即可，**不需要改任何程式碼**。
Drop the file into the matching folder using the filename below — no code changes needed.

狀態圖示：🟡 尚未提供（目前是佔位） · ✅ 已替換為正式素材 · ♻️ 沿用 ycv-auto-caption-prototype 的素材

## icons/

| 檔名 | 用途 / 出現位置 | 尺寸 | 格式 | 狀態 |
|---|---|---|---|---|
| `icon-btn-export-more.svg` | 頂部 Export ＋ ⋯ 按鈕 | 75×24 | SVG | ♻️ |
| `icon-timeline-audio-off.svg` | 時間軸左側「原音靜音」（Copilot 靜音後會亮起） | 26×26 | SVG | ♻️ |
| `icon-track-music.svg` | 時間軸音樂軌 icon | 30×30 | SVG | ♻️ |
| `icon-track-text.svg` | 時間軸文字軌 icon | 30×30 | SVG | ♻️ |
| `icon-track-audio-label.svg` | 音樂軌標籤「Ivory Wood」 | 75×30 | SVG | ♻️ |
| `icon-track-text-label.svg` | 「+ Text or Stickers」空軌 | 100×30 | SVG | ♻️ |
| `icon-badge-crown.svg` | Premium 皇冠（本 prototype 未使用，保留備用） | 16×16 | SVG | ♻️ |
| `icon-tile-text.svg` · `-audio` · `-mosaic-blur` · `-video-editor` · `-effects` · `-stickers` · `-stabilize` · `-ai-animation` · `-ai-expressions` | EDIT 工具列其他工具 | 68×70 tile | SVG | ♻️ |
| `icon-tile-copilot.svg` | 時間軸左下角 Copilot 按鈕 + sheet 標題 + 問候語（影片框 + 播放鍵 + 右下 AI 菱形，cyan→violet 漸層）。目前為 inline SVG（`I.logo`），換正式檔時請保留漸層或改成單色 | 20×20（按鈕 38×38） | SVG | 🟡 需設計正式 icon |
| EDIT 工具列：Edit / Canvas / Adjust / Filters | inline SVG（在 HTML 內） | 68×70 tile | inline SVG | 🟡 需換成正式 tile（可命名 `icon-tile-edit.svg` 等） |
| RETOUCH 工具列：Retouch / Face Lift / Reshape / Makeup / Body Tuner / Hair / Looks | inline SVG（在 HTML 內） | 68×70 tile | inline SVG | 🟡 需換成正式 tile |
| Copilot 計畫／結果卡片內的工具小圖示 | inline SVG（在 HTML 內） | 15×15 | inline SVG | 🟡 可沿用正式 tile 縮小版 |

## images/

| 檔名 | 用途 / 出現位置 | 尺寸 | 格式 | 狀態 |
|---|---|---|---|---|
| `img-editor-preview-01.jpg` | Clip 1 預覽畫面 | 720×961（3:4 直式） | JPG | ♻️ |
| `img-timeline-frame-01.jpg` | Clip 1 時間軸縮圖、Cover | 104×184 | JPG | ♻️ |
| `img-clip-02.jpg` | Clip 2 預覽畫面 | 720×961 | JPG | 🟡 由 Clip 1 裁切的佔位圖 |
| `img-clip-02-thumb.jpg` | Clip 2 時間軸縮圖 | 104×139 | JPG | 🟡 佔位 |
| `img-clip-03.jpg` | Clip 3 預覽畫面 | 720×961 | JPG | 🟡 由 Clip 1 鏡像裁切的佔位圖 |
| `img-clip-03-thumb.jpg` | Clip 3 時間軸縮圖 | 104×139 | JPG | 🟡 佔位 |
| `img-tool-presets.png` | EDIT 工具列：Presets | 28×28 @2x | PNG | ♻️ |
| `img-feature-looks.svg` | Looks 功能室縮圖列（Copilot 套用 Look 後點 Edit More 打開） | 327×98 | SVG（Figma 匯出） | ✅ 由 Yian 提供；縮圖名稱仍是 AaBbCc 佔位 |
| `img-tool-layout.png` | EDIT 工具列：Layout | 28×28 @2x | PNG | ♻️ |

## 規格建議 / Specs

- 圖片以 **2×** 尺寸輸出（表中為 CSS px），JPG 品質 80，單檔 < 300KB
- 三段 clip 建議用同一位人物、不同鏡頭，這樣 Retouch／Reorder 的效果比較好 demo
- SVG 請移除固定 `fill`，改由 CSS `currentColor` 控制顏色
- 檔名**不要改**；改了就要同步改 HTML
- 這個 prototype 不使用影片素材（依需求僅用靜態圖），所以沒有 `videos/` 資料夾
