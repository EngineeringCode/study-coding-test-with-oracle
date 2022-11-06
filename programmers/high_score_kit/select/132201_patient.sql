/*
 * 코딩테스트 연습 > SELECT > 12세 이하인 여자 환자 목록 출력하기
 * 해설 주소: https://engineeringcode.tistory.com/410
 * 문제 주소: https://school.programmers.co.kr/learn/courses/30/lessons/132201
 */

SELECT PT_NAME, 
    PT_NO, 
    GEND_CD, 
    AGE, 
    DECODE(TLNO, '', 'NONE', TLNO) AS TLNO 
FROM PATIENT 
WHERE AGE <= 12 
    AND GEND_CD = 'W' 
ORDER BY AGE DESC, PT_NAME ASC
	