FROM node:18-alpine

# กำหนดโฟลเดอร์ทำงานใน Container
WORKDIR /app

# คัดลอกไฟล์ package.json และ package-lock.json
COPY package.json package-lock.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกไฟล์ทั้งหมดเข้า Container
COPY . .

# รันเซิร์ฟเวอร์
CMD ["node", "app.js"]
