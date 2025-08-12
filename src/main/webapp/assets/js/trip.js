function toggleNote(btn) {
	const note = btn.nextElementSibling;
	if (note.style.display === "block") {
		note.style.display = "none";
		btn.textContent = "📝 노트 작성";
	} else {
		note.style.display = "block";
		btn.textContent = "📝 노트 닫기";
	}
}

// 탭 인디케이터 위치/너비 갱신
  (function(){
    const trip_tabs = document.getElementById('dayTabs');
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
  })();