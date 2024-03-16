using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 요청한 번호의 백준 문제에 해당하는 solved.ac 문제 정보를 가져옵니다.
 *
 * @return
 *     solved.ac 문제 정보 1개를 가져옵니다.
 */
@summary("백준 문제 번호로 문제 가져오기")
@tag("problem")
@get
@route("/problem/show")
op getProblemById(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,

  /**
   * 요청할 백준 문제 번호
   */
  @query
  problemId: uint64,
): GetProblemById.Ok;

namespace GetProblemById {
  @extension(XInternal, true)
  model Ok extends Problem {
    @statusCode status: 200;
  }
}
