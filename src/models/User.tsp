namespace SolvedAC;

/**
 * solved.ac 사용자 정보입니다.
 */
model User {
  /**
   * 사용자명입니다.
   *
   * @example "shiftpsh"
   */
  handle: string;

  /**
   * 자기소개입니다.
   *
   * @example "🧡 이곳의 개발자입니다."
   */
  bio: string;

  /**
   * 사용자가 장착 중인 뱃지 ID입니다.
   *
   * @example "ghudegy2022-1"
   */
  badgeId?: string | null;

  /**
   * 사용자가 장착 중인 배경 ID입니다.
   *
   * @example "event240203"
   */
  backgroundId: string;

  /**
   * 사용자의 프로필 사진으로 가는 하이퍼링크입니다.
   *
   * @example "https://static.solved.ac/uploads/profile/shiftpsh-picture-1693244003120.png"
   */
  profileImageUrl?: url | null;

  /**
   * 푼 문제 수입니다.
   *
   * @example 3474
   */
  solvedCount: uint64;

  /**
   * 난이도 기여 수입니다.
   *
   * @example 1528
   */
  voteCount: uint64;

  /**
   * 취득한 CLASS입니다.
   * 취득한 CLASS가 없다면 0으로 표현합니다.
   *
   * @example 8
   */
  class: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10;

  /**
   * CLASS 완성도에 따른 장식입니다.
   * 장식 없음 ("none"), 은장<sup>+</sup> ("silver"), 금장<sup>++</sup> ("gold")이 있습니다.
   *
   * @example "none"
   */
  classDecoration: "none" | "silver" | "gold";

  /**
   * 라이벌 수입니다.
   *
   * @example 57
   */
  rivalCount: uint64;

  /**
   * 역라이벌 수입니다.
   *
   * @example 139
   */
  reverseRivalCount: uint64;

  /**
   * @example 26
   */
  tier: SolveTier;

  /**
   * 문제풀이 레이팅입니다
   *
   * @example 2724
   */
  rating: uint32;

  /**
   * 상위 100 문제 난이도 합으로 얻은 레이팅입니다.
   *
   * @example 2294
   */
  ratingByProblemsSum: uint32;

  /**
   * 취득한 CLASS에 따라 얻은 레이팅입니다.
   *
   * @example 230
   */
  ratingByClass: uint32;

  /**
   * 푼 문제 수로 얻은 레이팅입니다.
   *
   * @example 175
   */
  ratingBySolvedCount: uint32;

  /**
   * 문제 난이도에 기여한 횟수로 받은 레이팅입니다.
   *
   * @example 25
   */
  ratingByVoteCount: uint32;

  /**
   * 현재 아레나 티어입니다.
   *
   * @example 0
   */
  arenaTier: ArenaTier;

  /**
   * 현재 아레나 레이팅입니다.
   *
   * @example 0
   */
  arenaRating: uint32;

  /**
   * 역대 받은 아레나 티어 중 최고점일 때의 아레나 티어입니다.
   *
   * @example 0
   */
  arenaMaxTier: ArenaTier;

  /**
   * 역대 받은 아레나 레이팅 중 최고점일 때의 아레나 레이팅입니다.
   *
   * @example 0
   */
  arenaMaxRating: uint32;

  /**
   * 참여한 아레나 라운드 수입니다.
   *
   * @example 0
   */
  arenaCompetedRoundCount: uint64;

  /**
   * 유지한 최대 스트릭의 길이입니다. (일 단위)
   *
   * @example 366
   */
  maxStreak: uint64;

  /**
   * 보유 중인 코인에 100을 곱한 값입니다.
   * 만약, 실제로 보유한 코인이 0.15라면 15로 기록됩니다.
   *
   * @example 1063
   */
  coins: uint64;

  /**
   * 보유 중인 별가루 양입니다.
   *
   * @example 273583
   */
  stardusts: uint64;

  /**
   * 가입 시각입니다.
   * 일부 계정에 대해 2021년 6월 19일 0시 (UTC)로 백필된 흔적이 있습니다.
   *
   * @example "2021-06-19T00:00:00.000Z"
   */
  joinedAt: offsetDateTime;

  /**
   * 정지 종료 시각입니다.
   * 정지 이력이 없을 경우 Unix Timestamp 0 값을 포매팅한 문자열입니다.
   *
   * @example "1970-01-01T00:00:00.000Z"
   */
  bannedUntil: offsetDateTime;

  /**
   * [솔브드 서포터](https://solved.ac/support) 종료 시각입니다.
   * 활성화 이력이 없을 경우 Unix Timestamp 0 값을 포매팅한 문자열입니다.
   *
   * @example "2099-12-31T14:59:59.000Z"
   */
  proUntil: offsetDateTime;

  /**
   * 사용자의 문제 풀이 레이팅 순위입니다.
   *
   * @example 130
   */
  rank: uint64;

  // ------------------------------ FullUser ===========================

  /**
   * 라이벌 여부입니다.
   *
   * @example false
   */
  isRival: boolean;

  /**
   * 역라이벌 여부입니다.
   *
   * @example false
   */
  isReverseRival: boolean;

  /**
   * 로그인한 사용자가 해당 사용자를 차단했는지 여부입니다.
   *
   * @example false
   */
  blocked: boolean;

  /**
   * 로그인한 사용자가 해당 사용자에게 차단당했는지 여부입니다.
   *
   * @example false
   */
  reverseBlocked: boolean;
}
