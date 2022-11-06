/*
 * 코딩테스트 연습 > SELECT > 과일로 만든 아이스크림 고르기
 * 해설 주소: https://engineeringcode.tistory.com/409
 * 문제 주소: https://school.programmers.co.kr/learn/courses/30/lessons/133025
 */

SELECT O.FLAVOR 
FROM 
    (SELECT FLAVOR 
	FROM FIRST_HALF 
	WHERE TOTAL_ORDER > 3000 
	ORDER BY TOTAL_ORDER DESC) O,
    ICECREAM_INFO I
WHERE O.FLAVOR = I.FLAVOR
    AND I.INGREDIENT_TYPE = 'fruit_based'