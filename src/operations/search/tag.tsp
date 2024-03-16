using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 주어진 쿼리에 따라 문제 태그를 검색합니다.
 *
 * @return
 *     페이지네이션 가능한 문제 목록을 반환합니다.
 */
@summary("문제 태그 검색하기")
@tag("search")
@get
@route("/search/tag")
op searchProblemTag(
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
): SearchTag.Ok;

namespace SearchTag {
  @extension(XInternal, true)
  model Ok extends PaginatedList<ProblemTag> {
    @statusCode status: 200;
  }
}
