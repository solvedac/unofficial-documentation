using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 태그 목록을 가져옵니다.
 *
 * @return
 *     태그 목록을 가져옵니다.
 */
@summary("태그 목록 가져오기")
@tag("tag")
@get
@route("/tag/list")
op getTagList(
  /**
   * 페이지
   */
  @query
  page?: uint32,
): GetTagList.Ok;

namespace GetTagList {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: PaginatedList<ProblemTag>;
  }
}
