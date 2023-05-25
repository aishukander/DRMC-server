# Server執行的環境
FROM openjdk:17

# Server所需的程式檔與配置，此指令是把server資料夾所有的檔案都複製到Docker Image裡的/usr/src/myapp資料夾
COPY . /usr/src/myapp

# 說明Minecraft Server在Docker裡運行時的目錄
WORKDIR /usr/src/myapp

# Server執行的方式，我這邊就是把官網的執行指令複製下來而已
CMD ["java", "-Xmx5120M", "-Xms512M", "-jar", "server.jar", "nogui"]
# 用 docker build . -t=aishukander/minecraft-bukkit:latest 來打包到本機,用docker push aishukander/minecraft-bukkit:latest 來上傳Docker Hub,將latest換成對應版本號除非製作的為最新版