using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * CLASS별 문제 수를 가져옵니다.
 *
 * @return
 *     CLASS별 문제 수
 */
@summary("CLASS별 문제 수 가져오기")
@tag("problem")
@get
@route("/problem/class")
op getClassesProblemCount(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,
): GetClassesProblemCount.Ok;

namespace GetClassesProblemCount {
  /**
   * @example
   *     [
   *         { "class": 1, "total": 36, "essentials": 16, "criteria": 16 },
   *         { "class": 2, "total": 40, "essentials": 20, "criteria": 16 },
   *         { "class": 3, "total": 48, "essentials": 20, "criteria": 20 },
   *         { "class": 4, "total": 48, "essentials": 24, "criteria": 20 },
   *         { "class": 5, "total": 48, "essentials": 24, "criteria": 20 },
   *         { "class": 6, "total": 48, "essentials": 24, "criteria": 20 },
   *         { "class": 7, "total": 48, "essentials": 24, "criteria": 20 },
   *         { "class": 8, "total": 48, "essentials": 24, "criteria": 20 },
   *         { "class": 9, "total": 48, "essentials": 24, "criteria": 20 },
   *         { "class": 10, "total": 48, "essentials": 24, "criteria": 20 }
   *     ]
   */
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body items: ClassEntry[];
  }

  @extension(XInternal, true)
  model ClassEntry {
    /**
     * 클래스 숫자입니다.
     */
    class: Class;

    /**
     * 총 문제 수입니다.
     */
    total: uint32;

    /**
     * 에센셜 문제 수입니다.
     */
    essentials: uint32;

    /**
     * 취득에 필요한 문제 수입니다.
     */
    criteria: uint32;
  }
}
