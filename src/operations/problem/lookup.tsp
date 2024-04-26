using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 요청한 번호 목록 각각의 백준 문제에 해당하는 solved.ac 문제 정보를 목록으로 가져옵니다.
 *
 * @return
 *     solved.ac 문제 정보 여러개를 가져옵니다.
 */
@summary("백준 문제 번호 목록으로 문제 가져오기")
@tag("problem")
@get
@route("/problem/lookup")
op getProblemsByIdList(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,

  /**
   * 요청할 백준 문제 번호 목록
   * 쉼표로 구분해 넣습니다
   */
  @query({
    format: "csv",
  })
  problemIds: uint64[],
): GetProblemsByIdList.Ok;

namespace GetProblemsByIdList {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: PaginatedList<Problem>;
  }
}
