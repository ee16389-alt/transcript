# 漸字稿系統

單頁版即時錄音逐字稿工具。使用瀏覽器錄音，將音訊片段直接送到 Google Gemini API 轉錄，並可匯出 Markdown、SRT、TXT。

**線上版本：https://jianzigao.web.app**

## 使用方式

建議用本機 localhost 開啟，瀏覽器才會穩定允許麥克風、螢幕分享與本機備份權限。

```bash
./run.command
```

或手動執行：

```bash
python3 -m http.server 8080
```

然後打開：

```text
http://127.0.0.1:8080
```

## 需要準備

- Google Gemini API Key
- Chrome、Edge 或其他支援 MediaRecorder 的現代瀏覽器
- 若要錄 Teams 或瀏覽器會議音訊，建議使用「分頁/螢幕音訊」模式

API Key 可在畫面右上角設定中貼上。若勾選記住，Key 只會存在這台電腦瀏覽器的 localStorage。

## 檔案說明

- `index.html`：主程式，包含介面、錄音、分段轉錄、匯出功能
- `run.command`：macOS 本機啟動腳本
- `firebase.json`：Firebase Hosting 部署設定

## 部署

已部署至 Firebase Hosting：**https://jianzigao.web.app**

若要重新部署：

```bash
firebase deploy
```

部署前請確認已登入 Firebase CLI（`firebase login`），且 `.firebaserc` 已設定專案 `jianzigao`。
