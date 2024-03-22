namespace SolvedAC;

model ProblemTagNameTranslated {
  /**
   * 태그 이름이 작성된 언어입니다.
   *
   * @example "ko"
   */
  language: Language;

  /**
   * 이름입니다.
   *
   * @example "임의 정밀도 / 큰 수 연산"
   */
  name: string;

  /**
   * 짧은 이름입니다.
   * 따로 없을 경우 `name`과 같은 값입니다.
   *
   * @example "임의 정밀도 / 큰 수 연산"
   */
  short: string;
}
