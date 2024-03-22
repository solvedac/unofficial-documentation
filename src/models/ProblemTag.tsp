namespace SolvedAC;

model ProblemTag {
  /**
   * solved.ac에서 쓰는 태그 ID입니다.
   *
   * @example "arbitrary_precision"
   */
  key: string;

  /**
   * @TODO 의미 파악하기
   *
   * @example false
   */
  isMeta: boolean;

  /**
   * 백준 온라인 저지에서 쓰는 태그 ID입니다.
   *
   * @example 117
   */
  bojTagId: uint64;

  /**
   * 태그가 붙은 문제 수입니다.
   *
   * @example 241
   */
  problemCount: uint64;

  /**
   * 언어별 태그 이름 목록입니다.
   */
  displayNames: ProblemTagNameTranslated[];

  /**
   * 별명 목록입니다. 빈 배열일 수 있습니다.
   */
  aliases: ProblemTagAlias[];
}
