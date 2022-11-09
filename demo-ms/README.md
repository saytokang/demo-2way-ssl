# 2way SSL demo 에서 server role 이다.
gateway 에서 호출된다.  
해당 서비스에서 2way SSL 설정을 한다. server.ssl.client-auth: need 추가


## 사전 준비
openSSL로 keystore 생성.  
생성 script는 /script.sh 파일에 있음. 

## trust-store 설정
trust-store 이 파일에는 gateway 의 인증서를 import 해서 만든다. 

