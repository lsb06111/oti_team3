# OTI 팀3 미니프로젝트

## 설명
오티아이 미니프로젝트 3팀입니다.

## 시작하기



### clone 하기
windows 에서 하려면 git bash를 다운받아서 실행시키고 프로젝트를 저장하고 싶은 디렉토리로 cd 해서 이동한 후 다음을 수행하세요

```bash
git clone https://github.com/lsb06111/oti_team3.git
```

`ls` 또는 `dir`로 리스트를 확인하고 oti_team3가 보이나 확인합니다.

```bash
cd oti_team3
```

### Eclipse에서 열기
1.  Eclipse를 엽니다.
2.  상단 메뉴바에서 `File` > `Import...` 로 이동합니다.
3.  `General` > `Existing Projects into Workspace` 를 선택하고 `Next`를 클릭합니다.
4.  "Select root directory" 옆의 `Browse...`를 클릭하고 방금 복제한 `oti_team3` 폴더로 이동합니다.
5.  "Projects" 아래에 프로젝트가 선택되어 있는지 확인하고 `Finish`를 클릭합니다.

## Git 워크플로우

### 최신 변경 사항 가져오기 (Pulling Latest Changes)
작업을 시작하거나 변경 사항을 푸시하기 전에, 항상 원격 저장소에서 최신 변경 사항을 가져와 병합 충돌을 피하십시오:

```bash
git pull origin main
```

### 중요!! 작업 후 푸쉬할 때

1.  add 해줍니다.
    ```bash
    git add .
    ```

2.  커밋 해줍니다.
    ```bash
    git commit -m "여기에 설명적인 커밋 메시지를 작성하세요"
    ```
3. 푸쉬 해줍니다.
```bash
git push
```