namespace SolvedAC;

/**
 * solved.ac 사용자 정보입니다.
 */
model SocialUser extends RivalUser {
  /**
   * 로그인한 사용자가 해당 사용자를 차단했는지 여부입니다.
   *
   * @example false
   */
  blocked: boolean;

  /**
   * 로그인한 사용자가 해당 사용자에게 차단당했는지 여부입니다.
   *
   * @example false
   */
  reverseBlocked: boolean;
}
