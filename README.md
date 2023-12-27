# 🖥Project superhero-landing
![superhome](https://github.com/Sonnet-Songbird/superhero-landing/assets/148945962/e7982ef5-7fb0-4f03-9007-91b33180092b)

### 프로젝트 소개
슈퍼 히어로 랜딩은 현실적인 상용 서비스에 대응할 수 있는 구조와 로직을 토대로 구현된 쇼핑몰 사이트 프로젝트입니다. 

본 프로젝트에서는 쇼핑몰, 게시판, 그리고 이용자 관리 서비스를 구현하고 있으며, 예제화된 코드와 달리 상용 서비스에 필수적인 고려 사항을 적절히 반영하며, 다양한 사양과 수요에 대응할 수 있는 경험을 쌓는 것에 중점을 두고 있습니다.

<br>

## 📝프로젝트 기간
* 2023.12.06 - 2023.12.26일

 ### 조원 및 역할
 - 팀장 진태우 : 주문 및 통합 결제 모듈
 - 팀원 박철홍 : DB, 게시판 모듈, 유틸리티와 개발 환경 구축
 - 팀원 김하늘 : 회원 관리 및 암호화 모듈
 - 팀원 변지현 : 뷰 디자인 및 JS 라이브러리 활용

### 환경
- `Java 17`
- `JDK : Amazon Corretto`
- **IDE** : IntelliJ IDEA 2023.2.5
- **Database** : Oracle DB
- **WAS** : Apache Tomcat

<br>

## 🛠기능
#### <a href="https://github.com/Sonnet-Songbird/superhero-landing/tree/main/web/src/main/java/com/member" > 회원 관리 </a>
- 상용 서비스와 유사한 데이터 관리 로직을 추구
- 클라이언트에서의 암호화를 통해 평문 스니핑 가능성 차단

#### <a href="https://github.com/" > 게시판 </a>
- Toast UI 구현을 통한 마크 다운 기반의 WYSIWYG 에디터
- 뷰에서 독립된 서비스 로직을 통한 확장성 추구
- 통합화, 모듈화 된 컨트롤러로 유지보수성 추구 

#### <a href="https://github.com/Sonnet-Songbird/superhero-landing/tree/main/web/src/main/java/com/shop" > 쇼핑몰 </a>
- 포트원 솔루션을 이용해 다수의 PG사와 연동 가능한 스마트 결제 모듈
- 판매하는 제품과 연관된 히어로 정보 컨텐츠를 제공
- 단계적이며 비동기화 된 결제 절차를 통한 데이터 손실 방지.
<br>
