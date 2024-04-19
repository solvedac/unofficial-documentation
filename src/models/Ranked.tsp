/**
 * 페이지네이션 가능한 쿼리의 응답 결과입니다.
 */
model Ranked<T> {
  ...T;

  /**
   * 순위입니다.
   *
   * @example 1
   */
  rank: uint64;
}
