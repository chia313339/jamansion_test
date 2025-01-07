# 使用 Node 的 Alpine 版本
FROM node:16-alpine

# 全域安裝 serve（或 http-server 也可）
RUN npm install -g serve

# 建一個資料夾來放靜態檔案
WORKDIR /app

# 複製本機 dist 到容器內 /app
COPY dist /app

# 容器內部對外開放的 port
EXPOSE 3000

# 以 serve 執行 dist，使用 3000 port
CMD ["serve", "/app", "-l", "3000"]
