namespace SolvedAC;

/**
 * 사용자가 획득할 수 있는 배경입니다.
 */
model Background {
  /**
   * 배경의 고유 ID입니다.
   *
   * @example "boardgame_7"
   */
  backgroundId: string;

  /**
   * 배경 사진으로 가는 하이퍼링크입니다.
   *
   * @example "https://static.solved.ac/profile_bg/boardgame/chess.png"
   */
  backgroundImageUrl: url;

  /**
   * 일러스트 배경 보기가 꺼져있을 때 보여줄 수 있는 대안 배경 사진으로 가는 하이퍼링크입니다.
   * 일러스트를 포함하지 않은 배경이거나, 배경 제작자가 따로 준비하지 않은 경우 `null` 값일 수 있습니다.
   *
   * @example "https://static.solved.ac/profile_bg/boardgame/chess_fallback.png"
   */
  fallbackBackgroundImageUrl?: url | null;

  /**
   * 움직이는 배경이 켜져있을 때 보여줄 수 있는 배경 영상으로 가는 하이퍼링크입니다.
   * 배경 제작자가 따로 준비하지 않은 경우 `null` 값일 수 있습니다.
   *
   * @example "https://static.solved.ac/profile_bg/boardgame/chess.mp4"
   */
  backgroundVideoUrl?: url | null;

  /**
   * 배경을 획득한 사용자 수입니다.
   *
   * @example 105
   */
  unlockedUserCount: uint64;

  /**
   * 배경의 표시 이름입니다.
   *
   * @example "분석의 예술"
   */
  displayName: string;

  /**
   * 배경의 설명입니다.
   *
   * @example
   *     "나쁜 오프닝 뒤에는 미들게임이라는 희망이 있고, \
   *      나쁜 미들게임 뒤에는 엔드게임이라는 희망이 있다. \
   *      하지만 엔드게임에 들어갔다면 진실과 마주해야 한다."
   */
  displayDescription: string;

  /**
   * 배경을 얻는 조건입니다.
   * 조건이 숨겨진 경우, 해당 값이 내려오지 않습니다.
   *
   * @example "보드게임컵에 출전해 7문제 이상 해결"
   */
  conditions?: string | null;

  /**
   * 배경 획득 조건이 숨겨져 있는지 여부입니다.
   *
   * @example false
   */
  hiddenConditions: boolean;

  /**
   * 일러스트 배경인지 여부입니다.
   *
   * @example true
   */
  isIllust: boolean;

  /**
   * 배경 획득 유형 분류입니다.
   *
   * @example "contest"
   */
  backgroundCategory: BackgroundCategory;

  /**
   * solved.ac 회사가 권리를 보유하는지 여부입니다.
   * @example true
   */
  solvedCompanyRights: boolean;

  /**
   * 배경을 작업한 작가 목록입니다. 빈 배열일 수 있습니다.
   *
   * @example
   *     [
   *         {
   *             "authorId": "havana723",
   *             "role": "Illustration",
   *             "authorUrl": null,
   *             "handle": "havana723",
   *             "twitter": null,
   *             "instagram": null,
   *             "displayName": "havana723"
   *         },
   *         {
   *             "authorId": "shiftpsh",
   *             "role": "Graphic art / Animations",
   *             "authorUrl": "https://shiftpsh.com",
   *             "handle": "shiftpsh",
   *             "twitter": "shiftpsh",
   *             "instagram": "shiftpsh",
   *             "displayName": "shiftpsh"
   *         }
   *     ]
   */
  authors: BackgroundAuthor[];
}
