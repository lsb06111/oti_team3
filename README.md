# OTI 팀 3 프로젝트

## 설명
이 저장소는 OTI 팀 3 프로젝트를 위한 것입니다. 이 README는 프로젝트 설정 및 Git을 사용한 협업 방법에 대한 지침을 제공합니다.

## 시작하기

### 전제 조건
시작하기 전에 다음이 설치되어 있는지 확인하십시오:
*   **Java Development Kit (JDK)** (예: JDK 11 이상)
*   **Eclipse IDE for Enterprise Java and Web Developers**
*   **Git**

### 저장소 복제 (Cloning the Repository)
프로젝트의 로컬 사본을 얻으려면 터미널 또는 Git Bash를 열고 다음 명령을 실행하십시오:

```bash
git clone https://github.com/lsb06111/oti_team3.git
```

복제된 디렉토리로 이동하십시오:

```bash
cd oti_team3
```

### Eclipse로 가져오기 (Importing into Eclipse)
1.  Eclipse를 엽니다.
2.  `File` > `Import...` 로 이동합니다.
3.  `General` > `Existing Projects into Workspace` 를 선택하고 `Next`를 클릭합니다.
4.  "Select root directory" 옆의 `Browse...`를 클릭하고 방금 복제한 `oti_team3` 폴더로 이동합니다.
5.  "Projects" 아래에 프로젝트가 선택되어 있는지 확인하고 `Finish`를 클릭합니다.

## Git 워크플로우

### 최신 변경 사항 가져오기 (Pulling Latest Changes)
작업을 시작하거나 변경 사항을 푸시하기 전에, 항상 원격 저장소에서 최신 변경 사항을 가져와 병합 충돌을 피하십시오:

```bash
git pull origin main
```

### 변경 사항 만들기 및 커밋하기 (Making and Committing Changes)
1.  프로젝트 파일에 원하는 변경 사항을 적용합니다.
2.  변경 사항을 스테이징합니다. 다음 명령으로 모든 수정된 파일을 스테이징할 수 있습니다:
    ```bash
    git add .
    ```
    또는 특정 파일을 스테이징합니다:
    ```bash
    git add path/to/your/file.java
    ```
3.  설명적인 메시지와 함께 스테이징된 변경 사항을 커밋합니다:
    ```bash
    git commit -m "여기에 설명적인 커밋 메시지를 작성하세요"
    ```

### 변경 사항 푸시하기 (Pushing Changes)
변경 사항을 커밋한 후, 원격 저장소로 푸시합니다:

```bash
git push origin main
```

문제가 발생하면 푸시하기 전에 최신 변경 사항을 가져왔는지 확인하십시오.