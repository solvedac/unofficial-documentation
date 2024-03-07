namespace SolvedAC;

/**
 * 문제 정보입니다.
 */
model Problem {
  /**
   * 백준 문제 번호로, 문제마다 고유합니다.
   *
   * @example 13705
   */
  problemId: uint64;

  /**
   * 한국어 문제 제목입니다.
   * HTML 엔티티나 LaTeX 수식을 포함할 수 있습니다.
   *
   * @example "Ax+Bsin(x)=C"
   */
  titleKo: string;

  /**
   * 언어별 문제 제목 목록입니다.
   *
   * @example
   *     [{
   *         "language": "ko",
   *         "languageDisplayName": "ko",
   *         "title": "Ax+Bsin(x)=C",
   *         "isOriginal": true
   *     }]
   */
  titles: ProblemTitleTranslated[];

  /**
   * 채점 가능 여부입니다.
   *
   * @example true
   */
  isSolvable: boolean;

  /**
   * 부분 점수/서브태스크 문제 여부입니다.
   *
   * @example false
   */
  isPartial: boolean;

  /**
   * 맞은 사람 수입니다.
   *
   * @example 560
   */
  acceptedUserCount: uint64;

  level: ProblemLevel;

  /**
   * 난이도 기여자 수입니다.
   *
   * @example 163
   */
  votedUserCount: uint64;

  /**
   * 새싹 문제 여부입니다.
   *
   * @example false
   */
  sprout: boolean;

  /**
   * 레이팅을 주지 않는지 여부입니다.
   *
   * @example false
   */
  givesNoRating: boolean;

  /**
   * 난이도 기여 제한 여부입니다.
   *
   * @example false
   */
  isLevelLocked: boolean;

  /**
   * 평균 시도 횟수입니다.
   *
   * @example 24.5393
   */
  averageTries: float64;

  /**
   * 공식 문제 여부입니다.
   * 번외 문제 등은 비공식 문제로 분류됩니다.
   *
   * @example true
   */
  official: boolean;

  /**
   * 태그 목록입니다.
   *
   * @example
   *     [
   *         {
   *             "key": "arbitrary_precision",
   *             "isMeta": false,
   *             "bojTagId": 117,
   *             "problemCount": 241,
   *             "displayNames": [
   *                 {
   *                     "language": "ko",
   *                     "name": "임의 정밀도 / 큰 수 연산",
   *                     "short": "임의 정밀도 / 큰 수 연산"
   *                 },
   *                 {
   *                     "language": "en",
   *                     "name": "arbitrary precision / big integers",
   *                     "short": "arbitrary precision / big integers"
   *                 },
   *                 {
   *                     "language": "ja",
   *                     "name": "高精度または大きな数の演算",
   *                     "short": "高精度または大きな数の演算"
   *                 }
   *             ],
   *             "aliases": [
   *                 { "alias": "빅인티저" },
   *                 { "alias": "빅데시멀" },
   *                 { "alias": "biginteger" },
   *                 { "alias": "bigdecimal" }
   *             ]
   *         },
   *         {
   *             "key": "binary_search",
   *             "isMeta": false,
   *             "bojTagId": 12,
   *             "problemCount": 1137,
   *             "displayNames": [
   *                 {
   *                     "language": "ko",
   *                     "name": "이분 탐색",
   *                     "short": "이분 탐색"
   *                 },
   *                 {
   *                     "language": "en",
   *                     "name": "binary search",
   *                     "short": "binary search"
   *                 },
   *                 {
   *                     "language": "ja",
   *                     "name": "二分探索",
   *                     "short": "二分探索"
   *                 }
   *             ],
   *             "aliases": [
   *                 { "alias": "이분탐색" },
   *                 { "alias": "이진탐색" }
   *             ]
   *         },
   *         {
   *             "key": "math",
   *             "isMeta": false,
   *             "bojTagId": 124,
   *             "problemCount": 6007,
   *             "displayNames": [
   *                 {
   *                     "language": "ko",
   *                     "name": "수학",
   *                     "short": "수학"
   *                 },
   *                 {
   *                     "language": "en",
   *                     "name": "mathematics",
   *                     "short": "math"
   *                 },
   *                 {
   *                     "language": "ja",
   *                     "name": "数学",
   *                     "short": "数学"
   *                 }
   *             ],
   *             "aliases": []
   *         },
   *         {
   *             "key": "numerical_analysis",
   *             "isMeta": false,
   *             "bojTagId": 122,
   *             "problemCount": 17,
   *             "displayNames": [
   *                 {
   *                     "language": "ko",
   *                     "name": "수치해석",
   *                     "short": "수치해석"
   *                 },
   *                 {
   *                     "language": "en",
   *                     "name": "numerical analysis",
   *                     "short": "numerical analysis"
   *                 },
   *                 {
   *                     "language": "ja",
   *                     "name": "数値解析",
   *                     "short": "数値解析"
   *                 }
   *             ],
   *             "aliases": [
   *                 { "alias": "수학" }
   *             ]
   *         }
   *     ]
   */
  tags: ProblemTag[];

  metadata: unknown;
}
