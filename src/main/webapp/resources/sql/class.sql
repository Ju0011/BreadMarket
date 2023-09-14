CREATE TABLE IF NOT EXISTS class(
	c_id VARCHAR(10) NOT NULL,
	c_name VARCHAR(20),
	c_unitPrice  INTEGER,
	c_description TEXT,
   	c_category VARCHAR(20),
	c_unitsInStock integer,
	c_fileName  VARCHAR(20),
	PRIMARY KEY (c_id)
)default CHARSET=utf8;

desc class;

INSERT INTO class VALUES('C1234','티라미수 케이크 만들기', 70000, '티라미수를 타르트로 만들어 본 티라미수 타르트 원데이클래스입니다:). 티라미수와 크림치즈를 좋아하시는 분이라면 클래스를 듣고 후회하지 않으실거 같아요!', 'Cake', 6, 'P1238.png');
INSERT INTO class VALUES('C1235', '바스크 케이크 만들기', 50000, '텁텁하지 않고 깔끔하게 푸딩처럼 사르르 녹는 행복한 맛을 즐길 수 있습니다:) 
비싸고 신선한 재료를 사용하기에 고유의 깊은 풍미를 느낄 수 있습니다! 쉬운 공정이기에 초보자분들도 무리없이 만들 수 있으며 실패하지 않는 레시피를 연구하여 제공해드리고 있습니다.',
'Cake', 0, 'P1239.png');
INSERT INTO class VALUES('C1236', '초코쿠키 만들기', 50000, ' 계량부터 구워내기, 포장까지 손수진행하는 과정이라 혼자서도 잘 하실 수 있게 해드려요.
 초보분들도 간단하게 진행하실수 있는 수업입니다. 걱정하지 마시고 신청하세요!', 'Cookie', 6, 'P1240.jpg');

select * from class;

delete
from class;


drop table class;