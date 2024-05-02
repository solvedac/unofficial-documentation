using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 해당 핸들의 사용자가 기여한 문제 수를 문제 수준별로 나누어 가져옵니다.
 *
 * @return
 *     문제 수준별 기여한 문제 수가 담긴 목록
 */
@summary("문제 수준별로 사용자가 기여한 문제 수 가져오기")
@tag("user")
@get
@route("/user/contribution_stats")
op getUserContributionStats(
  /**
   * 요청할 사용자명
   */
  @query
  handle: string,
): GetUserContributionStats.Ok;

namespace GetUserContributionStats {
  /**
   *  @example
   *{
   *[
   *  {
   *    "total": 7071,
   *    "solved": 11,
   *    "solvedStandards": 9,
   *    "contributed": 0
   *  },
   *  {
   *    "total": 308,
   *    "solved": 154,
   *    "solvedStandards": 49,
   *    "contributed": 79
   *  },
   *  {
   *    "total": 568,
   *    "solved": 284,
   *    "solvedStandards": 13,
   *    "contributed": 205
   *  },
   *  {
   *    "total": 1370,
   *    "solved": 664,
   *    "solvedStandards": 12,
   *    "contributed": 584
   *  },
   *  {
   *    "total": 1403,
   *    "solved": 497,
   *    "solvedStandards": 17,
   *    "contributed": 344
   *  },
   *  {
   *    "total": 1011,
   *    "solved": 220,
   *    "solvedStandards": 2,
   *    "contributed": 144
   *  },
   *  {
   *    "total": 1009,
   *    "solved": 213,
   *    "solvedStandards": 2,
   *    "contributed": 8
   *  },
   *  {
   *    "total": 1008,
   *    "solved": 153,
   *    "solvedStandards": 1,
   *    "contributed": 2
   *  },
   *  {
   *    "total": 1011,
   *    "solved": 115,
   *    "solvedStandards": 11,
   *    "contributed": 2
   *  },
   *  {
   *    "total": 1077,
   *    "solved": 118,
   *    "solvedStandards": 11,
   *    "contributed": 1
   *  },
   *  {
   *    "total": 1167,
   *    "solved": 97,
   *    "solvedStandards": 3,
   *    "contributed": 2
   *  },
   *  {
   *    "total": 1052,
   *    "solved": 97,
   *    "solvedStandards": 5,
   *    "contributed": 2
   *  },
   *  {
   *    "total": 1532,
   *    "solved": 85,
   *    "solvedStandards": 2,
   *    "contributed": 8
   *  },
   *  {
   *    "total": 1387,
   *    "solved": 50,
   *    "solvedStandards": 1,
   *    "contributed": 8
   *  },
   *  {
   *    "total": 1197,
   *    "solved": 44,
   *    "solvedStandards": 0,
   *    "contributed": 11
   *  },
   *  {
   *    "total": 1106,
   *    "solved": 55,
   *    "solvedStandards": 12,
   *    "contributed": 18
   *  },
   *  {
   *    "total": 1287,
   *    "solved": 94,
   *    "solvedStandards": 2,
   *    "contributed": 12
   *  },
   *  {
   *    "total": 1226,
   *    "solved": 66,
   *    "solvedStandards": 2,
   *    "contributed": 6
   *  },
   *  {
   *    "total": 1243,
   *    "solved": 53,
   *    "solvedStandards": 0,
   *    "contributed": 4
   *  },
   *  {
   *    "total": 1181,
   *    "solved": 22,
   *    "solvedStandards": 0,
   *    "contributed": 0
   *  },
   *  {
   *    "total": 896,
   *    "solved": 9,
   *    "solvedStandards": 2,
   *    "contributed": 2
   *  },
   *  {
   *    "total": 941,
   *    "solved": 6,
   *    "solvedStandards": 0,
   *    "contributed": 1
   *  },
   *  {
   *    "total": 880,
   *    "solved": 5,
   *    "solvedStandards": 0,
   *    "contributed": 0
   *  },
   *  {
   *    "total": 618,
   *    "solved": 0,
   *    "solvedStandards": 0,
   *    "contributed": 0
   *  },
   *  {
   *    "total": 452,
   *    "solved": 0,
   *    "solvedStandards": 0,
   *    "contributed": 0
   *  },
   *  {
   *    "total": 355,
   *    "solved": 0,
   *    "solvedStandards": 0,
   *    "contributed": 0
   *  },
   *  {
   *    "total": 285,
   *    "solved": 0,
   *    "solvedStandards": 0,
   *    "contributed": 0
   *  },
   *  {
   *    "total": 150,
   *    "solved": 0,
   *    "solvedStandards": 0,
   *    "contributed": 0
   *  },
   *  {
   *    "total": 92,
   *    "solved": 0,
   *    "solvedStandards": 0,
   *    "contributed": 0
   *  },
   *  {
   *    "total": 34,
   *    "solved": 0,
   *    "solvedStandards": 0,
   *    "contributed": 0
   *  },
   *  {
   *    "total": 28,
   *    "solved": 0,
   *    "solvedStandards": 0,
   *    "contributed": 0
   *  }
   *]
   *}
   */
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: Array<ContributionStat>;
  }

  @extension(XInternal, true)
  model ContributionStat {
    /**
     * solved.ac에 등록된 해당 수준 문제 수입니다.
     * @example 0
     */
    total: uint64;

    /**
     * 사용자가 푼 문제 수입니다.
     */
    solved: uint64;

    /**
     * 사용자가 푼 표준 문제 수입니다.
     */
    solvedStandards: uint64;

    /**
     * 사용자가 기여한 문제 수입니다.
     */
    contributed: uint64;
  }
}
