using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 태그 ID로 태그 정보를 가져옵니다.
 *
 * @return
 *     태그 정보를 가져옵니다.
 */
@summary("태그 ID로 태그 정보 가져오기")
@tag("tag")
@get
@route("/tag/show")
op getTagByKey(
  /**
   * 태그 ID
   */
  @query
  key: string,
): GetTagByKey.Ok;

namespace GetTagByKey {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body tag: ProblemTag;
  }
}
