using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 해당 핸들의 사용자가 푼 문제 수를 문제 수준별로 나누어 가져옵니다.
 *
 * @return
 *     문제 수준별 푼 문제 수가 담긴 목록
 */
@summary("문제 수준별로 사용자가 푼 문제 수 가져오기")
@tag("user")
@get
@route("/user/problem_stats")
op getUserProblemStats(
  /**
   * 요청할 사용자명
   */
  @query
  handle: string,
): GetUserProblemStats.Ok;

namespace GetUserProblemStats {
  /**
   * @example
   *     [
   *         { "level": 0, "solved": 33, "tried": 3, "partial": 2, "total": 7078 },
   *         { "level": 1, "solved": 108, "tried": 0, "partial": 0, "total": 154 },
   *         { "level": 2, "solved": 155, "tried": 0, "partial": 0, "total": 283 },
   *         { "level": 3, "solved": 341, "tried": 0, "partial": 0, "total": 703 },
   *         { "level": 4, "solved": 365, "tried": 0, "partial": 0, "total": 902 },
   *         { "level": 5, "solved": 227, "tried": 0, "partial": 0, "total": 783 },
   *         { "level": 6, "solved": 193, "tried": 0, "partial": 0, "total": 783 },
   *         { "level": 7, "solved": 183, "tried": 0, "partial": 0, "total": 847 },
   *         { "level": 8, "solved": 180, "tried": 0, "partial": 0, "total": 892 },
   *         { "level": 9, "solved": 165, "tried": 0, "partial": 0, "total": 972 },
   *         { "level": 10, "solved": 154, "tried": 0, "partial": 0, "total": 1051 },
   *         { "level": 11, "solved": 186, "tried": 1, "partial": 0, "total": 940 },
   *         { "level": 12, "solved": 196, "tried": 0, "partial": 0, "total": 1431 },
   *         { "level": 13, "solved": 154, "tried": 3, "partial": 0, "total": 1318 },
   *         { "level": 14, "solved": 131, "tried": 3, "partial": 0, "total": 1145 },
   *         { "level": 15, "solved": 104, "tried": 3, "partial": 0, "total": 1041 },
   *         { "level": 16, "solved": 120, "tried": 2, "partial": 0, "total": 1185 },
   *         { "level": 17, "solved": 110, "tried": 6, "partial": 0, "total": 1147 },
   *         { "level": 18, "solved": 98, "tried": 6, "partial": 1, "total": 1181 },
   *         { "level": 19, "solved": 83, "tried": 4, "partial": 0, "total": 1147 },
   *         { "level": 20, "solved": 64, "tried": 5, "partial": 0, "total": 891 },
   *         { "level": 21, "solved": 52, "tried": 3, "partial": 0, "total": 930 },
   *         { "level": 22, "solved": 32, "tried": 6, "partial": 1, "total": 871 },
   *         { "level": 23, "solved": 23, "tried": 2, "partial": 1, "total": 615 },
   *         { "level": 24, "solved": 13, "tried": 1, "partial": 0, "total": 450 },
   *         { "level": 25, "solved": 7, "tried": 1, "partial": 0, "total": 356 },
   *         { "level": 26, "solved": 4, "tried": 0, "partial": 0, "total": 283 },
   *         { "level": 27, "solved": 1, "tried": 0, "partial": 0, "total": 150 },
   *         { "level": 28, "solved": 1, "tried": 0, "partial": 1, "total": 92 },
   *         { "level": 29, "solved": 1, "tried": 0, "partial": 0, "total": 34 },
   *         { "level": 30, "solved": 2, "tried": 0, "partial": 0, "total": 28 }
   *     ]
   */
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: Array<ProblemStat>;
  }

  @extension(XInternal, true)
  model ProblemStat {
    level: ProblemLevel;

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
     * 사용자가 부분 성공한 문제 수입니다.
     */
    partial: uint64;

    /**
     * 사용자가 시도해 본 문제 수입니다.
     */
    tried: uint64;
  }
}
