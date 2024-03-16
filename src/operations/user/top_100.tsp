using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 사용자가 푼 문제 중 문제 수준이 높은 상위 100 문제를 가져옵니다
 *
 * @return
 *     상위 100 문제 목록
 */
@summary("상위 100 문제 가져오기")
@tag("user")
@get
@route("/user/top_100")
op getUserTop100(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,

  /**
   * 요청할 사용자명
   */
  @query
  handle: string,
): GetUserTop100.Ok;

namespace GetUserTop100 {
  @extension(XInternal, true)
  model Ok extends PaginatedList<Problem> {
    @statusCode status: 200;
  }
}
