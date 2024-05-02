using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 해당 핸들의 사용자가 푼 문제 수를 태그별로 나누어 가져옵니다.
 *
 * @return
 *     태그별 푼 문제 수가 담긴 목록
 */
@summary("태그별로 사용자가 푼 문제 수 가져오기")
@tag("user")
@get
@route("/user/problem_tag_stats")
op getUserProblemTagStats(
  /**
   * 요청할 사용자명
   */
  @query
  handle: string,
): GetUserProblemTagStats.Ok;

namespace GetUserProblemTagStats {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: PaginatedList<ProblemTagStat>;
  }

  @extension(XInternal, true)
  model ProblemTagStat {
    tag: ProblemTag;

    /**
     * solved.ac에 등록된 해당 태그 문제 수입니다.
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
