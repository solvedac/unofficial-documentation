using TypeSpec.Http;

namespace SolvedAC {
  /**
   * 계정의 설정을 변경합니다.
   *
   * **주의**: 로그인이 필요한 API는 사이트 내에서 호출할 수 없으므로 별도 도구를 이용해주십시오.
   */
  @summary("계정 설정 변경하기")
  @tag("account")
  @useAuth(TokenAuth)
  @patch
  @route("/account/update_settings")
  op updateAccountSettings(
    /**
     * 업데이트할 설정의 이름입니다.
     * @example "twitterPostOnClassIncrease"
     */
    key: string,

    /**
     * 업데이트할 설정의 새로운 값입니다.
     * @example true
     */
    value: unknown,
  ): NotAuthorized | UpdateAccountSettings.Ok;
}

namespace UpdateAccountSettings {
  /**
   * 서버가 반환에 성공한 경우입니다.
   */
  model Ok {
    @statusCode status: 204;
  }
}
