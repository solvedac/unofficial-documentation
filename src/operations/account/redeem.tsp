/**
 * @TODO: 반환에 성공한 경우 문서화하기
 */
using TypeSpec.Http;

namespace SolvedAC {
  /**
   * 리딤 코드와 배지, 배경 등을 교환합니다.
   *
   * **주의**: 로그인이 필요한 API는 사이트 내에서 호출할 수 없으므로 별도 도구를 이용해주십시오.
   */
  @summary("코드 교환하기")
  @tag("account")
  @useAuth(TokenAuth)
  @post
  @route("/account/redeem")
  op redeemCode(
    /**
     * 리딤 코드입니다.
     * @example "R33D3MC0D3"
     */
    code: string,
  ): NotAuthorized | RedeemCode.NotFound;
}

namespace RedeemCode {
  /**
   * 리딤 코드가 올바르지 않은 경우입니다.
   */
  @error
  model NotFound {
    @statusCode status: 404;
  }
}
