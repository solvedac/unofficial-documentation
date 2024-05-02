using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 해당 핸들의 사용자가 푼 문제 수를 클래스별로 나누어 가져옵니다.
 *
 * @return
 *     클래스별 푼 문제 수가 담긴 목록
 */
@summary("클래스별로 사용자가 푼 문제 수 가져오기")
@tag("user")
@get
@route("/user/class_stats")
op getUserClassStats(
  /**
   * 요청할 사용자명
   */
  @query
  handle: string,
): GetUserClassStats.Ok;

namespace GetUserClassStats {
  /**
   * @example
   * [
   *   {
   *     "total": 36,
   *     "totalSolved": 36,
   *     "essentials": 16,
   *     "essentialSolved": 16,
   *     "class": 1,
   *     "decoration": "gold"
   *   },
   *   {
   *     "total": 40,
   *     "totalSolved": 40,
   *     "essentials": 20,
   *     "essentialSolved": 20,
   *     "class": 2,
   *     "decoration": "gold"
   *   },
   *   {
   *     "total": 48,
   *     "totalSolved": 48,
   *     "essentials": 20,
   *     "essentialSolved": 20,
   *     "class": 3,
   *     "decoration": "gold"
   *   },
   *   {
   *     "total": 48,
   *     "totalSolved": 40,
   *     "essentials": 24,
   *     "essentialSolved": 22,
   *     "class": 4,
   *     "decoration": "none"
   *   },
   *   {
   *     "total": 48,
   *     "totalSolved": 26,
   *     "essentials": 24,
   *     "essentialSolved": 13,
   *     "class": 5,
   *     "decoration": "none"
   *   },
   *   {
   *     "total": 48,
   *     "totalSolved": 24,
   *     "essentials": 24,
   *     "essentialSolved": 8,
   *     "class": 6,
   *     "decoration": "none"
   *   },
   *   {
   *     "total": 48,
   *     "totalSolved": 13,
   *     "essentials": 24,
   *     "essentialSolved": 7,
   *     "class": 7,
   *     "decoration": null
   *   },
   *   {
   *     "total": 48,
   *     "totalSolved": 1,
   *     "essentials": 24,
   *     "essentialSolved": 1,
   *     "class": 8,
   *     "decoration": null
   *   },
   *   {
   *     "total": 48,
   *     "totalSolved": 0,
   *     "essentials": 24,
   *     "essentialSolved": 0,
   *     "class": 9,
   *     "decoration": null
   *   },
   *   {
   *     "total": 48,
   *     "totalSolved": 0,
   *     "essentials": 24,
   *     "essentialSolved": 0,
   *     "class": 10,
   *     "decoration": null
   *   }
   * ]
   */
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: Array<ClassStat>;
  }

  @extension(XInternal, true)
  model ClassStat {
    /**
     * 클래스 번호입니다.
     * @example 1
     */
    class: Class;

    /**
     * solved.ac에 등록된 해당 클래스의 문제 수입니다.
     * @example 36
     */
    total: uint64;

    /**
     * 사용자가 푼 클래스 문제 수입니다.
     * @example 36
     */
    totalSolved: uint64;

    /**
     * solved.ac에 등록된 해당 클래스의 에센셜 문제 수입니다.
     * @example 16
     */
    essentials: uint64;

    /**
     * 사용자가 푼 클래스 에센셜 문제 수입니다.
     * @example 16
     */
    essentialSolved: uint64;

    /**
     * 사용자가 획득한 클래스 치장입니다.
     * @example "gold"
     */
    decoration: string;
  }
}
