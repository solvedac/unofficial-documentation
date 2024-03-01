using TypeSpec.Http;

/**
 * JWT 규격의 solved.ac 사용자 접근 토큰을 Cookie로 넘깁니다.
 */
model TokenAuth is ApiKeyAuth<ApiKeyLocation.cookie, "solvedacToken">;

namespace SolvedAC {
  /**
   * `solvedacToken`이 올바르지 않은 경우입니다.
   */
  @error
  model NotAuthorized {
    @statusCode status: 403;
  }
}
