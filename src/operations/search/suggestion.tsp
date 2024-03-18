using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 주어진 쿼리에 따라 검색할 때 도움이 되도록 자동 완성 및 상위 검색 결과를 반환합니다.
 * 자동 완성 결과는 언어에 의존적입니다.
 *
 * @return
 *     자동 완성 및 상위 검색 결과를 반환합니다.
 */
@summary("검색 자동완성 구하기")
@tag("search")
@get
@route("/search/suggestion")
op getSearchAutoCompletions(
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
): GetSearchAutoCompletions.Ok;

namespace GetSearchAutoCompletions {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: Suggestion;
  }

  @extension(XInternal, true)
  model Suggestion {
    autocomplete: AutoCompleteEntry[];
    problems: BriefProblemEntry[];

    /**
     * 검색 결과로 나올 총 문제 수입니다
     *
     * @example 12548
     */
    problemCount: uint64;

    tags: BriefProblemTagEntry[];

    /**
     * 검색 결과로 나올 총 태그 수입니다.
     *
     * @example 134
     */
    tagCount: uint64;

    users: UserEntry[];

    /**
     * 검색 결과로 나올 총 사용자 수입니다.
     *
     * @example 15015
     */
    userCount: uint64;
  }

  @extension(XInternal, true)
  model AutoCompleteEntryBase<Href extends url | never> {
    /**
     * 자동 완성 제목입니다.
     * 만약 href이 없을 경우 누르면 해당 값으로 자동 완성합니다.
     */
    caption: string;

    /**
     * 자동 완성 요소의 설명입니다.
     */
    description: string;
  }

  /**
   * 고급 검색 관련 자동 완성입니다.
   *
   * @example { "caption": "s#", "description": "푼 사람 수" }
   */
  @extension(XInternal, true)
  model AutoCompleteEntry {
    ...AutoCompleteEntryBase<Href = never>;
  }

  /**
   * 요악한 문제 정보입니다.
   *
   * @example
   *     {
   *        "id": 1014,
   *        "title": "컨닝",
   *        "level": 17,
   *        "solved": 2143,
   *        "caption": "컨닝",
   *        "description": "#1014",
   *        "href": "https://www.acmicpc.net/problem/1014"
   *     }
   */
  @extension(XInternal, true)
  model BriefProblemEntry {
    /**
     * 문제 ID입니다.
     *
     * @example 1763
     */
    id: uint64;

    /**
     * 문제 제목입니다.
     *
     * @example "트리 색칠"
     */
    title: string;

    /**
     * @example 24
     */
    level: ProblemLevel;

    /**
     * 푼 사람 수입니다.
     *
     * @example 160
     */
    solved: uint64;

    ...AutoCompleteEntryBase<Href = url>;
  }

  /**
   * 요약한 태그 정보입니다.
   *
   * @example
   *     {
   *         "key": "math",
   *         "name": "수학",
   *         "problemCount": 6078,
   *         "caption": "tag:math",
   *         "description": "6078문제",
   *         "href": "/problems/tags/math"
   *     }
   */
  @extension(XInternal, true)
  model BriefProblemTagEntry {
    /**
     * solved.ac에서 쓰는 태그 ID입니다.
     * @example "math"
     */
    key: string;

    /**
     * 태그 이름입니다.
     * 사용자 언어에 따라 번역되지 않습니다.
     *
     * @example "mathematics"
     */
    name: string;

    /**
     * 태그가 붙은 문제 수입니다.
     *
     * @example 6078
     */
    problemCount: uint64;

    ...AutoCompleteEntryBase<Href = url>;
  }

  /**
   * 사용자 정보입니다.
   */
  @extension(XInternal, true)
  @withVisibility("brief")
  model UserEntry is User;
}
