# 2way SSL 샘플
2개의 app 을 이용한다.  
- server : demo-ms --> microservice
- client : demo-gw --> gateway service

2way SSL 구성에서 
* demo-ms 서비스에서 application.yml 에 server.ssl.client-auth: need 설정 추가.
* demo-gw 서비스에서 spring.cloud.gateway.httpclient.key-store 설정 추가.


## 테스트 실행
```
GET https://gw.com/time
```
[주] 위에서 gw.com 의 hostname이 /etc/hosts 에 등록되어 있다. 

