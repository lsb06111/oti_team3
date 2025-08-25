
// step tab 전환  
function switchStep(tabIndex) {
	  const stepDoms = document.querySelectorAll('.trip-step'); // NodeList
	  stepDoms.forEach((el, i) => {
	    el.style.display = (i === tabIndex ? 'block' : 'none');
	  });
}

// 일정 저장버튼 표시/숨기기 처리
function toggleDoneBtn(btn){
	const id = btn.getAttribute('id');
	if (id === "trip-loc-step"){
		document.querySelector("#trip-done-btn").style.display= 'block';
	}else{
		document.querySelector("#trip-done-btn").style.display= 'none';
	}
}

function toggleNote(btn) {
	btn.classList.toggle("active");
	const note = btn.parentElement.parentElement.nextElementSibling;
	if (note.style.display === "block") {
		note.style.display = "none";
	} else {
		note.style.display = "block";
	}
}

function deleteNote(btn){
	$card = $(btn).closest('.trip-timeline-event');
	$card.remove();
	assignLocIndex();
}

// 직접 검색 or 추천 선택 탭
function toggleLocTab(btn){
	const searchFormE = document.getElementById('trip-search-form');
	const recomE = document.getElementById('trip-rcmds');
	const searchResult = document.getElementById('trip-search-result');
	if(btn.id === 'trip-tab-search'){
		searchFormE.style.display = "block";
		searchResult.style.display = "block";
		recomE.style.display = "none";
	}else{
		searchFormE.style.display = "none";
		searchResult.style.display = "none";
		recomE.style.display = "block";
	}
	removeMarker();
}
 
// 탭 인디케이터 위치/너비 갱신
function setTab(id){
  const tabs = document.getElementById(id);
  if(!tabs) return;

  // 인디케이터 없으면 만들어 줌
  let indicator = tabs.querySelector('.trip-tab-indicator');
  if(!indicator){
    indicator = document.createElement('span');
    indicator.className = 'trip-tab-indicator';
    indicator.style.position = 'absolute';
    indicator.style.left = '0';
    indicator.style.bottom = '0';
    indicator.style.height = '2px';
    indicator.style.width = '0';
    indicator.style.transition = 'transform 150ms ease, width 150ms ease, left 150ms ease';
    tabs.style.position = tabs.style.position || 'relative';
    tabs.appendChild(indicator);
  }

  const getItems = () => Array.from(tabs.querySelectorAll('.trip-tab'));

  function updateIndicator(target){
    if(!target || !indicator) return;
    // 한 프레임 양보해 레이아웃이 안정된 뒤 측정
    requestAnimationFrame(() => {
      const left  = target.offsetLeft - (tabs.scrollLeft || 0);
      const width = target.offsetWidth;
      indicator.style.left  = left + 'px';
      indicator.style.width = width + 'px';
    });
  }

  function setActive(btn){
    if(!btn) return;
    const items = getItems();
    items.forEach(b => {
      const active = (b === btn);
      b.classList.toggle('is-active', active);
      b.setAttribute('aria-selected', active ? 'true' : 'false');
    });
    updateIndicator(btn);
    // 필요 시 실제 날짜 변경 로직 호출
    // onChangeDay?.(btn.dataset.day);
  }

  function init(){
    const items = getItems();
    if(items.length === 0) return;
    const current = tabs.querySelector('.trip-tab.is-active') || items[0];
    setActive(current);
  }

  // 클릭 위임
  tabs.addEventListener('click', (e) => {
    const btn = e.target.closest('.trip-tab');
    if(btn && tabs.contains(btn)) setActive(btn);
  });

  // 초기화: 로드/폰트 로드/리사이즈 시 재계산
  window.addEventListener('load', init);
  if (document.fonts && document.fonts.ready) document.fonts.ready.then(init).catch(()=>{});
  window.addEventListener('resize', () => {
    const current = tabs.querySelector('.trip-tab.is-active');
    updateIndicator(current);
  });

  // 동적 추가 대응: 자식 변화를 감지해 다시 초기화
  new MutationObserver(() => init())
    .observe(tabs, { childList: true, subtree: true });

  // 즉시 한 번 시도
  init();
} //setTab 함수 종료


// 일자별 여행 코스 탭 전환
function switchDay(btn){
	let idx = btn.getAttribute("data-day");
	let timelineDoms = document.querySelectorAll(".trip-timelineForDay");
	timelineDoms.forEach((el, i) => {
		el.style.display = (i+1 == idx ? 'block' : 'none');
	});
};

// 추천 관광지를 타임라인에 추가
function insertToTimeline(btn) {
	  const $btn   = $(btn);
	  const $next  = $btn.parent().next();// 부모의 다음 형제
	  const title  = $.trim($next.find('.sl-name').text());
	  const type   = $.trim($next.find('.sl-type').text());

	  // 표시 중인 타임라인(보이는 것) 선택
	  const $target = $('.trip-timelineForDay:visible').first();
	  const img = $btn.parent().find('img').attr('src');
	  const order = $target.children().length;

	  if ($target.length) {
	    $target.append(getTimelineEvent(title, type, img, order+1));
	  }
	};

function getTimelineEvent(title, type, img, order){
	let text = `
	<div class="trip-timeline-event d-flex flex-column p-2">
		<div class="d-flex w-100">
			<div class="trip-idx m-1">${order}</div>
			<div class="event-info mx-2">
				<div class="time">12:55-12:55</div>
				<div style="color: #ff7a7a;">${type}</div>
				<div style="white-space: nowrap">${title}</div>
			</div>
			<img src="${img}" alt="이미지 없음" class="event-img" />
			<div class="d-flex flex-column justify-content-around">
			    <i class="trip-note-toggle bi bi-pencil-square ms-2" onclick="toggleNote(this)" style="font-size:1.4em"></i>
			    <i class="bi bi-trash ms-2" style="font-size:1.4em; cursor:pointer;"  onclick="deleteNote(this)"></i>
			</div>
			
		</div>
		<div class="trip-note-area">
			<textarea class="pe-5" placeholder="메모를 입력하세요..."></textarea>
			<button class="btn btn-light save-note-btn">완료</button>
		</div>
	</div>`;
	return text;
}

// 장소 선택 탭 랜더링 후 세팅
document.querySelector('#trip-loc-step').addEventListener('shown.bs.tab', () => { //새로운 탭 콘텐츠가 완전히 보여진 후 실행되는 이벤트
	requestAnimationFrame(() => requestAnimationFrame(() => { // 코드 실행 타이밍을 한 프레임정도 늦춘다 * 2 , 레이아웃 안정화·성능 최적화에 널리 쓰임
		relayoutKeepCenter(map);
		$('#trip-dest').text(tripDest);
		$('#trip-dates').text(tripStartDate + " - "  + tripEndDate);
		setTab("trip-loc-tab");
		setTab("dayTabs");
	}, { once: true })); // 해당 탭을 최초로 열 때 한 번만 실행하고 싶다면 once 옵션
});

// tripnote 관광지 순서 매기기
function assignLocIndex(){
	$list = $('.trip-timelineForDay:visible');
	$list.children().each(function(idx, el){
		$(el).find('.trip-idx').text(idx+1);
	});
}