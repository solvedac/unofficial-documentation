namespace SolvedAC;

/**
 * 언어별 문제 제목입니다.
 */
model ProblemTitleTranslated {
  /**
   * 문제 제목이 작성된 언어입니다.
   *
   * @example "ko"
   */
  language: Language;

  /**
   * 문제 제목이 작성된 언어의 이름입니다.
   *
   * @example "ko"
   */
  languageDisplayName: string;

  /**
   * 문제 제목입니다.
   *
   * @example "Ax+Bsin(x)=C"
   */
  title: string;

  /**
   * 원본과 동일한지 여부입니다.
   *
   * @example true
   */
  isOriginal: boolean;
}
