using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 역라이벌인 사용자 중에서 티어가 높은 사용자가 먼저 오도록 정렬한 목록을 가져옵니다.
 *
 * @return
 *     페이지네이션 가능한 사용자 목록을 반환합니다.
 */
@summary("티어 순 역라이벌 랭킹 가져오기")
@tag("ranking")
@useAuth(TokenAuth)
@get
@route("/ranking/reverse_rival")
op getReverseRivalRankingByTier(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,

  /**
   * 페이지
   */
  @query
  page?: uint32,
): GetReverseRivalRankingByTier.Ok | Unauthorized;

namespace GetReverseRivalRankingByTier {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: PaginatedList<RivalUser>;
  }
}
