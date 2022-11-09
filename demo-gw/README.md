# 2way SSL demo 에 client role gateway
본 프로그램은 2way SSL 인증 방식에서 client 역할을 수행한다.  
테스트는 gateway 를 통해서 ms서비스를 호출하도록 하고 있다. 
>  2way SSL 설정이라고 하면 ms 서비스에서 2way SSL 을 설정한다. gateway에서는 httpclient.ssl 에서 keystore 를 설정하면 된다. 

## 준비 작업
1. keystore 생성 (script.sh 파일을 참고할 것)
2. trust-store 정책 결정
    >trust-store 는 spring.cloud.gateway.httpclient 부분에 설정해야 한다. 만약 CA 기관의 인증서만 사용한다면 별도 추가 설정을 하지 않아도 된다. 하지만, 사설 인증서를 사용했다면 추가해 주어야 한다. 
    >trustedX509Certificates: 이 구문 이후에 1개라도 추가 설정이 있다면, default cacerts 를 사용하지 않기 때문에  api route uri 에 해당하는 모든 인증서를 추가해 주어야 한다. 

## 참고사항
server.ssl.trust-store 관련 사항은 Gateway에 접속하는 client 와 관련된 인증서 검증이다. 본 테스트 사항과 무관하다. 

### curl 테스트
```
curl -k https://gw.com/time \
 --cert /Users/donheekang/workspace/tmp/1103/demo-2way/demo-client/client.pem \
 --key /Users/donheekang/workspace/tmp/1103/demo-2way/demo-client/client.key \
 --verbose
```

## SSL logging trace 보기
```
 mvn spring-boot:run -Dspring-boot.run.jvmArguments="-Djavax.net.debug=all"
```