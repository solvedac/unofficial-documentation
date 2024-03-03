using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 주어진 쿼리에 따라 문제를 검색합니다.
 *
 * @return
 *     페이지네이션 가능한 문제 목록을 반환합니다.
 */
@summary("문제 검색하기")
@tag("search")
@get
@route("/search/problem")
op searchProblem(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,

  /**
   * 쿼리 문자열
   */
  @query
  query: string,

  /**
   * 검색 결과 정렬 방향
   *
   * <details>
   *     <summary>열거형 값 설명</summary>
   *
   *     | 값   | 설명                    |
   *     | :--- | :---------------------- |
   *     | asc  | 오름차순 (작은 것 먼저) |
   *     | desc | 내림차순 (큰 것 먼저)   |
   * </details>
   */
  @query
  direction: SearchProblem.QueryDirection,

  /**
   * 페이지
   */
  @query
  page?: uint32,

  /**
   * 검색 결과 정렬 기준
   *
   * <details>
   *     <summary>열거형 값 설명</summary>
   *
   *     | 값          | 설명               |
   *     | :---------- | :----------------- |
   *     | id          | 백준에서의 문제 ID |
   *     | level       | 문제 수준          |
   *     | title       | 문제 제목          |
   *     | solved      | 푼 사람 수         |
   *     | average_try | 평균 시도          |
   *     | random      | 랜덤               |
   * </details>
   */
  @query
  sort: SearchProblem.QuerySort,
): SearchProblem.Ok;

namespace SearchProblem {
  /**
   * 검색 결과 정렬 방향
   */
  enum QueryDirection {
    Ascend: "asc",
    Descend: "desc",
  }

  /**
   * 검색 결과 정렬 기준
   */
  enum QuerySort {
    BojId: "id",
    Level: "level",
    Title: "title",
    SolvedCount: "solved",
    AverageTry: "average_try",
    Random: "random",
  }

  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;

    /**
     * 찾은 문제 수입니다.
     *
     * @example 1
     */
    count: uint64;

    /**
     * 찾은 문제 목록입니다.
     * 만약 한 페이지에 담기에 너무 많다면 현재 페이지에 해당하는 문제 목록만 포함합니다.
     */
    items: Problem[];
  }
}
