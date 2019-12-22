@chcp 65001
CLS
@echo off
@TITLE Minecraft 懶人伺服器架設器
certutil -hashfile server.bat SHA256
echo 請檢查上面的 SHA256 是否與在下載頁看到的一樣，然後按下任意按鍵（Ian技術不夠好沒辦法自動檢查）。繼續代表您接受 Minecraft 使用者授權合約和 Microsoft 隱私權聲明。
pause
::
set type=Vanilla
::
echo 請輸入伺服器版本
set /p ver=
echo 呼叫主檔案伺服器下載網址中...
@curl -O https://ianiiaannn.github.io/Minecraft-EZ-Server/Forwarding/%type%/%ver%.tmp
set /p link=<%ver%.tmp
del %ver%.tmp
echo 已取得伺服器主檔案下載網址：%link%
curl -O %link%
pause
