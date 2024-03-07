/**
 * 페이지네이션 가능한 쿼리의 응답 결과입니다.
 */
model PaginatedList<Item> {
  /**
   * 전체 원소 수입니다.
   *
   * @example 1
   */
  count: uint64;

  /**
   * 현재 페이지의 원소 목록입니다.
   */
  items: Item[];
}
