namespace SolvedAC;

/**
 * solved.ac에 등록한 단체입니다.
 */
model Organization {
  /**
   * ID입니다.
   * @example 394
   */
  organizationId: uint64;

  /**
   * 이름입니다.
   * @example "KAIST"
   */
  name: string;

  /**
   * 유형입니다.
   * @example "university"
   */
  type: OrganizationType;

  /**
   * 문제풀이 레이팅입니다.
   * @example 3332
   */
  rating: uint32;

  /**
   * 속한 사용자 수입니다.
   * @example 627
   */
  userCount: uint64;

  /**
   * 난이도 기여 수입니다.
   * @example 29838
   */
  voteCount: uint64;

  /**
   * 푼 문제 수입니다.
   * @example 21708
   */
  solvedCount: uint64;

  /**
   * 상징 색입니다.
   * @example "#000000"
   */
  color: Color;
}
