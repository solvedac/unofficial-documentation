using TypeSpec.Http;

/**
 * JWT 규격의 solved.ac 사용자 접근 토큰을 Cookie로 넘깁니다.
 */
model TokenAuth is ApiKeyAuth<ApiKeyLocation.cookie, "solvedacToken">;
