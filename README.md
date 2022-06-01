1.18.1後改用paper為核心  
快速啟用最新版在終端機輸入docker run -d -p 25565:25565 aishukander/minecraft-bukkit 接著按下ENTER  
伺服器ip為宿主機ip或是可以  
輸入docker pull aishukander/minecraft-bukkit:版本號 下載對應版本伺服器  
請依標記來看現在支援的版本  
可單掛地圖資料夾和插件資料夾(需選版本)docker run -p 宿主機port:伺服器port -v /地圖資料夾絕對位置:/usr/src/myapp/world -v /插件資料夾絕對位置:/usr/src/myapp/plugins    aishukander/minecraft-bukkit:版本  
絕對位置範例/E/server/1.18.1就是磁碟E內的server資料夾內的1.18.1資料夾
(完全掛接不限定映像檔版本但需自行下載伺服器檔並同意協定)可將伺服器資料夾掛接到/usr/src/myapp  
掛接教學: docker run -p 宿主機port:伺服器port -v /絕對位置:/usr/src/myapp aishukander/minecraft-bukkit  
