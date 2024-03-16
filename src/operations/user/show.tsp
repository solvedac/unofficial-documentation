using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 해당 핸들의 사용자 정보를 가져옵니다.
 * 만약 요청자가 로그인 중이라면 라이벌 여부도 가져옵니다.
 * 로그인 중이 아니라면 라이벌 등 로그인해야 알 수 있는 정보는 기본값 처리됩니다.
 *
 * @return
 *     사용자 정보를 가져옵니다
 */
@summary("사용자 핸들로 정보 가져오기")
@tag("user")
@useAuth(TokenAuth)
@get
@route("/user/show")
op getUserByHandle(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,

  /**
   * 요청할 사용자명
   */
  @query
  handle: string,
): GetUserByHandle.Ok;

namespace GetUserByHandle {
  @extension(XInternal, true)
  model Ok is SocialUser {
    @statusCode status: 200;
  }
}
