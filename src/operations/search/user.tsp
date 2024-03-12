using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 주어진 쿼리에 따라 사용자를 검색합니다.
 *
 * @return
 *     페이지네이션 가능한 문제 목록을 반환합니다.
 */
@summary("사용자 검색하기")
@tag("search")
@get
@route("/search/user")
op searchUser(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,

  /**
   * 쿼리 문자열
   */
  @query
  query: string,

  /**
   * 페이지
   */
  @query
  page?: uint32,
): SearchUser.Ok;

namespace SearchUser {
  @extension(XInternal, true)
  model Ok is PaginatedList<User> {
    @statusCode status: 200;
  }
}
