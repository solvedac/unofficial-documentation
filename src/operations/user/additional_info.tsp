using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 해당 핸들을 가진 사용자의 부가 정보를 가져옵니다.
 *
 * @return
 *     사용자 부가 정보를 가져옵니다
 */
@summary("사용자 핸들로 부가 정보 가져오기")
@tag("user")
@get
@route("/user/additional_info")
op getUserAdditionalInfo(
  /**
   * 요청할 사용자명
   */
  @query
  handle: string,
): GetUserAdditionalInfo.Ok;

namespace GetUserAdditionalInfo {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body userAdditionalInfo: UserAdditionalInfo;
  }
}
