var container = document.getElementById('rcmd-map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};
var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

function resizeMap() {
	map.relayout();
}

function relayoutKeepCenter(map) {
	const center = map.getCenter();
	map.relayout();
	map.setCenter(center);
}

document.querySelector('#trip-loc-step').addEventListener('shown.bs.tab', () => { //새로운 탭 콘텐츠가 완전히 보여진 후 실행되는 이벤트
	requestAnimationFrame(() => requestAnimationFrame(() => { // 코드 실행 타이밍을 한 프레임정도 늦춘다 * 2 , 레이아웃 안정화·성능 최적화에 널리 쓰임
		relayoutKeepCenter(map);
	}, { once: true })); // 해당 탭을 최초로 열 때 한 번만 실행하고 싶다면 once 옵션
});