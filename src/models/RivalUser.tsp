namespace SolvedAC;

model RivalUser is User {
  /**
   * 라이벌 여부입니다.
   *
   * @example false
   */
  isRival: boolean;

  /**
   * 역라이벌 여부입니다.
   *
   * @example false
   */
  isReverseRival: boolean;
}
