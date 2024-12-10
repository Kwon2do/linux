# 베이스 이미지 설정
FROM node:18

# 작업 디렉터리 설정
WORKDIR /app

# 의존성 설치
COPY package*.json ./
RUN npm install

# 애플리케이션 소스 복사
COPY . .

# 애플리케이션 실행
CMD ["npm", "start"]