namespace SolvedAC;

/**
 * solved.ac 사용자 개인정보입니다.
 */
model UserAdditionalInfo {
  /**
   * 사용자의 국가/지역 코드입니다.
   *
   * @example "kr"
   */
  countryCode: string;

  /**
   * 사용자의 성별입니다.
   * - 0: 선택 안 함
   * - 1: 남성
   * - 2: 여성
   * - 9: 기타
   *
   * @example 0
   */
  gender: uint64;

  /**
   * 사용자를 영어로 표기할 때 사용하는 대명사입니다.
   *
   * @example "he/him"
   */
  pronouns: string;

  /**
   * 사용자의 생년입니다.
   *
   * @example 1998
   */
  birthYear: uint64;

  /**
   * 사용자의 생월입니다.
   *
   * @example 8
   */
  birthMonth: uint64;

  /**
   * 사용자의 생일입니다.
   *
   * @example 6
   */
  birthDay: uint64;

  /**
   * 사용자의 영어 이름입니다.
   *
   * @example "Suhyun Park"
   */
  name: string;

  /**
   * 사용자의 모국어 이름입니다.
   *
   * @example "박수현"
   */
  nameNative: string;
}
