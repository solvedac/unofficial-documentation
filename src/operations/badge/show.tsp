using TypeSpec.Http;

namespace SolvedAC {
  /**
   * 뱃지의 정보를 가져옵니다.
   *
   * @returns
   *     요청한 ID에 알맞은 뱃지 데이터를 반환합니다.
   */
  @summary("뱃지 정보 가져오기")
  @tag("badge")
  @get
  @route("/badge/show")
  op getBadge(
    /**
     * 뱃지 ID
     */
    @query
    badgeId: string,
  ): GetBadge.Ok;
}

namespace GetBadge {
  model Ok extends SolvedAC.Badge {
    @statusCode status: 200;
  }
}
