# RadishCareCenter
Hi this is a Weichat app i made to help myslef track my son's grow up. Hope it will help you raise kids as well.

Function:
1. receive message from weichat, structuralize them and log in DB. 
2. report status and draw chart
3. give warning for key action need to take.

How to deploy:
-Requirements:
 1. Weichat public account acquired at : https://mp.weixin.qq.com
 2. A Database, either SQL Server or MySQL
 3. A server with public IP so the Weichat backend and call back. Either Win Server, better has IIS but not mandator or Linux
 
-Configuration:
 1. Set up the DB with the CreateTable.sql under database folder
 2. Set up login and password
 3. Fill the secret.template and save as secret.txt with the information include a.host of the DB b.DB login user/pwd c.Weichat token
 4. For Linux, set up the docker by reference to the files under docker folder
 5. For Windows
   5.1 Install python3 and pip3
   5.2 Enlist the code
   5.3 Install required package: pip install -r requirements.txt
 6. Make sure the secret.txt appears at the right place either /conf/secret.txt or the same folder as main.py

