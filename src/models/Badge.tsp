using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 사용자가 획득할 수 있는 뱃지입니다.
 */
model Badge {
  /**
   * 뱃지의 고유 ID입니다.
   * @example "anniversary_1st"
   */
  badgeId: string;

  /**
   * 뱃지 사진으로 가는 하이퍼링크입니다.
   * @example "https://static.solved.ac/profile_badge/anniversary_1st.png"
   */
  badgeImageUrl: url;

  /**
   * 뱃지가 표시되는 이름입니다.
   * @example "1솔브"
   */
  displayName: string;

  /**
   * 뱃지의 설명입니다.
   * @example "solved.ac의 1주년과 함께했다"
   */
  displayDescription: string;

  /**
   * 뱃지를 획득한 사용자 수입니다.
   * @example 5000
   */
  unlockedUserCount: int64;

  /**
   * @example "gold"
   */
  badgeTier: BadgeTier;

  /**
   * @example "season"
   */
  badgeCategory: BadgeCategory;

  /**
   * solved.ac 회사가 권리를 보유하는지 여부입니다.
   * @example true
   */
  solvedCompanyRights: boolean;

  /**
   * 뱃지가 만들어진 시각입니다.
   * @example "2021-06-05T15:00:00.000Z"
   */
  createdAt: offsetDateTime;
}
