namespace SolvedAC;

/**
 * 배경 획득 유형 분류입니다.
 *
 * @example "contest"
 */
enum BackgroundCategory {
  /**
   * 이벤트 미션 수행으로 획득
   */
  Event: "event",

  /**
   * 아레나 참여 후 조건 만족으로 획득
   */
  Arena: "arena",

  /**
   * 업적 달성으로 획득
   */
  Achievement: "achievement",

  /**
   * 시즌 변경을 함께해 획득
   */
  Season: "season",

  /**
   * 대회 참여 후 조건 만족으로 획득
   */
  Contest: "contest",
}
