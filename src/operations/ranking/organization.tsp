using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 역라이벌인 사용자 중에서 문제풀이 레이팅이 높은 단체가 먼저 오도록 정렬한 목록을 가져옵니다.
 *
 * @return
 *     페이지네이션 가능한 사용자 목록을 반환합니다.
 */
@summary("문제풀이 레이팅 순 단체 랭킹 가져오기")
@tag("ranking")
@get
@route("/ranking/organization")
op getOrganizationRankingByACRating(
  /**
   * 단체 유형. 지정하지 않을 경우 전체입니다.
   */
  @query
  type?: OrganizationType,

  /**
   * 페이지
   */
  @query
  page?: uint32,
): GetOrganizationRankingByACRating.Ok;

namespace GetOrganizationRankingByACRating {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: PaginatedList<Ranked<Organization>>;
  }
}
