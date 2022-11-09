# keystore 생성
keytool -genkey -alias ms -keyalg RSA -keystore keystore.jks -storetype pkcs12

# 인증서 export
keytool -export -alias ms -keystore keystore.jks -file ms.crt

or 
keytool -export -alias ms -rfc -file ms.pem -keystore /Users/donheekang/workspace/tmp/1103/demo-2way-ssl/demo-ms/src/main/resources/keystore.jks

# trust-store 생성
keytool -importcert -keystore cacerts.jks -trustcacerts -alias gateway -file /Users/donheekang/workspace/tmp/1103/demo-2way-ssl/demo-gw/src/main/resources/gw.crt
# gateway 인증서를 import 한다.

# private key 추출
openssl pkcs12 -info -nodes -nocerts -out ms.key -in /Users/donheekang/workspace/tmp/1103/demo-2way-ssl/demo-ms/src/main/resources/keystore.jks
# curl 테스트 할 때 사용하려고 key  파일을 추출했다.