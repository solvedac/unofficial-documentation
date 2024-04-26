namespace SolvedAC;

/**
 * 뱃지 획득 유형 분류입니다.
 * @example "season"
 */
enum BadgeCategory {
  /**
   * 업적 달성으로 획득
   */
  Achievement: "achievement",

  /**
   * 시즌 변경을 함께해 획득
   */
  Season: "season",

  /**
   * 이벤트 미션 수행으로 획득
   */
  Event: "event",

  /**
   * 대회 참여 후 조건 만족으로 획득
   */
  Contest: "contest",
}
