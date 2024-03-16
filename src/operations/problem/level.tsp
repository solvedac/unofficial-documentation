using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 난이도별 문제 수를 가져옵니다.
 *
 * @return
 *     난이도별 문제 수
 */
@summary("난이도별 문제 수 가져오기")
@tag("problem")
@get
@route("/problem/level")
op getProblemsCountGroupByLevel(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,
): GetProblemsCountGroupByLevel.Ok;

namespace GetProblemsCountGroupByLevel {
  /**
   * @example
   *     [
   *         { "level": 0, "count": 7159 },
   *         { "level": 1, "count": 154 },
   *         { "level": 2, "count": 271 },
   *         { "level": 3, "count": 696 },
   *         { "level": 4, "count": 893 },
   *         { "level": 5, "count": 782 },
   *         { "level": 6, "count": 771 },
   *         { "level": 7, "count": 828 },
   *         { "level": 8, "count": 914 },
   *         { "level": 9, "count": 959 },
   *         { "level": 10, "count": 1021 },
   *         { "level": 11, "count": 973 },
   *         { "level": 12, "count": 1386 },
   *         { "level": 13, "count": 1291 },
   *         { "level": 14, "count": 1126 },
   *         { "level": 15, "count": 1023 },
   *         { "level": 16, "count": 1178 },
   *         { "level": 17, "count": 1121 },
   *         { "level": 18, "count": 1165 },
   *         { "level": 19, "count": 1126 },
   *         { "level": 20, "count": 891 },
   *         { "level": 21, "count": 904 },
   *         { "level": 22, "count": 850 },
   *         { "level": 23, "count": 602 },
   *         { "level": 24, "count": 440 },
   *         { "level": 25, "count": 352 },
   *         { "level": 26, "count": 281 },
   *         { "level": 27, "count": 149 },
   *         { "level": 28, "count": 93 },
   *         { "level": 29, "count": 32 },
   *         { "level": 30, "count": 28 }
   *     ]
   */
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body items: LevelEntry[];
  }

  @extension(XInternal, true)
  model LevelEntry {
    level: ProblemLevel;

    /**
     * 문제 수입니다.
     */
    count: uint64;
  }
}
