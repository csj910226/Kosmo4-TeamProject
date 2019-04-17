
							var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
							var options = { //지도를 생성할 때 필요한 기본 옵션
								center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
								level: 5 //지도의 레벨(확대, 축소 정도)
							};
	
							var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
							
							
							var startSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png', // 출발 마커이미지의 주소입니다    
						    startSize = new daum.maps.Size(50, 45), // 출발 마커이미지의 크기입니다 
						    startOption = { 
						        offset: new daum.maps.Point(15, 43) // 출발 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
						    };

						// 출발 마커 이미지를 생성합니다
						var startImage = new daum.maps.MarkerImage(startSrc, startSize, startOption);


						// 출발 마커가 표시될 위치입니다 
						var startPosition = new daum.maps.LatLng(33.450701, 126.570667); 

						// 출발 마커를 생성합니다
						var startMarker = new daum.maps.Marker({
						    map: map, // 출발 마커가 지도 위에 표시되도록 설정합니다
						    position: startPosition,
						    draggable: true, // 출발 마커가 드래그 가능하도록 설정합니다
						    image: startImage // 출발 마커이미지를 설정합니다
						});

						var arriveSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png', // 도착 마커이미지 주소입니다    
						arriveSize = new daum.maps.Size(50, 45), // 도착 마커이미지의 크기입니다 
						arriveOption = { 
						    offset: new daum.maps.Point(15, 43) // 도착 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
						};

						// 도착 마커 이미지를 생성합니다
						var arriveImage = new daum.maps.MarkerImage(arriveSrc, arriveSize, arriveOption);

						// 도착 마커가 표시될 위치입니다 
						var arrivePosition = new daum.maps.LatLng(33.450701, 126.572667);    
						 
						// 도착 마커를 생성합니다 
						var arriveMarker = new daum.maps.Marker({  
						    map: map, // 도착 마커가 지도 위에 표시되도록 설정합니다
						    position: arrivePosition,
						    draggable: true, // 도착 마커가 드래그 가능하도록 설정합니다
						    image: arriveImage // 도착 마커이미지를 설정합니다
						});		
						// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
						var linePath = [
						    new daum.maps.LatLng(33.450701, 126.570667),
						 
						    new daum.maps.LatLng(33.450701, 126.572667) 
						];

						// 지도에 표시할 선을 생성합니다
						var polyline = new daum.maps.Polyline({
						    path: linePath, // 선을 구성하는 좌표배열 입니다
						    strokeWeight: 5, // 선의 두께 입니다
						    strokeColor: '#ff0000', // 선의 색깔입니다
						    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
						    strokeStyle: 'solid' // 선의 스타일입니다
						});

						// 지도에 선을 표시합니다 
						polyline.setMap(map); 
						
					