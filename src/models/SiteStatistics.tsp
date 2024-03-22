namespace SolvedAC;

/**
 * solved.ac 사이트의 통계 정보입니다.
 */
model SiteStatistics {
  /**
   * 여태까지 색인된 백준 문제 수입니다.
   *
   * @example 29799
   */
  problemCount: uint64;

  /**
   * 여태까지 난이도가 기여된 백준 문제 수입니다.
   *
   * @example 22252
   */
  problemVotedCount: uint64;

  /**
   * 여태까지 등록한 사용자 수입니다.
   *
   * @example 127880
   */
  userCount: uint64;

  /**
   * 여태까지 난이도에 기여한 사용자 수입니다
   *
   * @example 3657
   */
  contributorCount: uint64;

  /**
   * 여태까지 이루어진 난이도 기여의 수입니다.
   *
   * @example 409333
   */
  contributionCount: uint64;
}
