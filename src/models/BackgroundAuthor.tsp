/**
 * 배경을 작업한 작가입니다.
 */
model BackgroundAuthor {
  /**
   * 작가 고유 ID입니다.
   *
   * @example "havana723"
   */
  authorId: string;

  /**
   * 수행한 역할입니다.
   *
   * @example "Illustration"
   */
  role: string;

  /**
   * 작가 홈페이지로 가는 하이퍼링크입니다.
   *
   * @example null
   */
  authorUrl?: url | null;

  /**
   * 작가의 solved.ac 핸들입니다.
   *
   * @example "havana723"
   */
  handle?: string | null;

  /**
   * 작가의 Twitter ID입니다.
   *
   * @example null
   */
  twitter?: string | null;

  /**
   * 작가의 인스타그램 ID입니다.
   *
   * @example null
   */
  instagram?: string | null;

  /**
   * 작가의 표시 이름입니다.
   *
   * @example "havana723"
   */
  displayName: string;
}
