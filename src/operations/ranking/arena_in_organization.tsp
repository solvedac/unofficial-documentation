using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 해당 단체에 속한 사용자 중에서 아레나 레이팅이 높은 사용자가 먼저 오도록 정렬한 목록을 가져옵니다.
 *
 * @return
 *     페이지네이션 가능한 사용자 목록을 반환합니다.
 */
@summary("아레나 레이팅 순 단체 내 랭킹 가져오기")
@tag("ranking")
@get
@route("/ranking/arena_in_organization")
op getArenaInOrganizationRankingByACRating(
  /**
   * 단체 ID
   */
  @query
  organizationId: uint32,

  /**
   * 페이지
   */
  @query
  page?: uint32,
): GetArenaInOrganizationRankingByACRating.Ok;

namespace GetArenaInOrganizationRankingByACRating {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: PaginatedList<User>;
  }
}
