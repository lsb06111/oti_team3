function toggleDoneBtn(btn){
	const id = btn.getAttribute('id');
	if (id === "trip-loc-step"){
		document.querySelector("#trip-done-btn").style.display= 'block';
	}else{
		document.querySelector("#trip-done-btn").style.display= 'none';
	}
}

function toggleNote(btn) {
	const note = btn.parentElement.parentElement.nextElementSibling;
	if (note.style.display === "block") {
		note.style.display = "none";
		btn.textContent = "📝 노트 작성";
	} else {
		note.style.display = "block";
		btn.textContent = "📝 노트 닫기";
	}
}

function toggleLocTab(btn){
	const searchE = document.getElementById('trip-search-form');
	const recomE = document.getElementById('trip-rcmds');
	if(btn.id === 'trip-tab-search'){
		searchE.style.display = "block";
		recomE.style.display = "none";
	}else{
		searchE.style.display = "none";
		recomE.style.display = "block";
	}
}
 
// 탭 인디케이터 위치/너비 갱신
function setTab(id){ // tabs 요소의 id
	const trip_tabs = document.getElementById(id);
	const trip_indicator = trip_tabs.querySelector('.trip-tab-indicator');
	const items = [...trip_tabs.querySelectorAll('.trip-tab')];

    function updateIndicator(target){
      const { offsetLeft: left, offsetWidth: width } = target;
      trip_indicator.style.left = left + 'px';
      trip_indicator.style.width = width + 'px';
    }
    function setActive(btn){
      items.forEach(b => { b.classList.toggle('is-active', b===btn); b.setAttribute('aria-selected', b===btn); });
      updateIndicator(btn);
      // TODO: 이곳에서 실제 날짜 변경 로직을 호출하세요.
      // onChangeDay(btn.dataset.day);
    }

    // 초기 위치
    window.addEventListener('load', () => setActive(items.find(b=>b.classList.contains('is-active')) || items[0]));
    // 리사이즈 시 재계산
    window.addEventListener('resize', () => {
      const current = trip_tabs.querySelector('.trip-tab.is-active') || items[0];
      updateIndicator(current);
    });
    // 클릭 이벤트
    trip_tabs.addEventListener('click', (e)=>{
      const btn = e.target.closest('.trip-tab');
      if(!btn) return;
      setActive(btn);
    });
  }
setTab("trip-loc-tab");
setTab("dayTabs"); 
  
// step tab 전환  
function switchStep(tabIndex) {
	  const stepDoms = document.querySelectorAll('.trip-step'); // NodeList
	  stepDoms.forEach((el, i) => {
	    el.style.display = (i === tabIndex ? 'block' : 'none');
	  });
	}
  

// 일자별 여행 코스 탭 전환
function switchDay(btn){
	let idx = btn.getAttribute("data-day");
	let timelineDoms = document.querySelectorAll(".trip-timelineForDay");
	timelineDoms.forEach((el, i) => {
		el.style.display = (i+1 == idx ? 'block' : 'none');
	});
}