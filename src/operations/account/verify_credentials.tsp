/**
 * @TODO: 반환에 성공한 경우 문서화하기
 */
using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;
/**
 * 현재 로그인한 계정 정보를 가져옵니다.
 *
 * **주의**: 로그인이 필요한 API는 사이트 내에서 호출할 수 없으므로 별도 도구를 이용해주십시오.
 */
@summary("로그인 정보 가져오기")
@tag("account")
@useAuth(TokenAuth)
@get
@route("/account/verify_credentials")
op verifyAccountCredentials(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,
): Unauthorized | VerifyCredentials.Ok;

namespace VerifyCredentials {
  /**
   * 크레데션 관련 본인 정보
   */
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body body: Credential;
  }

  @extension(XInternal, true)
  model Credential {
    user: UserWithSettings;
    aggredOn: Agreements;

    /**
     * 보유할 수 있는 모든 이모티콘에 대해 이모티콘 정보에 덧붙여 보유 여부를 함께 담은 목록입니다.
     *
     * @example
     *     [
     *         {
     *           "emoticonId": "hanbyeol-01", "emoticonUrl": "https://static.solved.ac/emoticons/fool.png",
     *           "displayName": "난 바보야", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-02", "emoticonUrl": "https://static.solved.ac/emoticons/lgtm.png",
     *           "displayName": "LGTM", "unlocked": false
     *         },
     *         {
     *           "emoticonId": "hanbyeol-03", "emoticonUrl": "https://static.solved.ac/emoticons/real.png",
     *           "displayName": "ㄹㅇㅋㅋ", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-04", "emoticonUrl": "https://static.solved.ac/emoticons/why-work.png",
     *           "displayName": "이게 왜 됨?", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-05", "emoticonUrl": "https://static.solved.ac/emoticons/i-wont-do.png",
     *           "displayName": "응, 안 해", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-06", "emoticonUrl": "https://static.solved.ac/emoticons/overclock.png",
     *           "displayName": "두뇌풀가동!", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-07", "emoticonUrl": "https://static.solved.ac/emoticons/hello-world.png",
     *           "displayName": "Hello, World!", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-08", "emoticonUrl": "https://static.solved.ac/emoticons/i-hate-math.png",
     *           "displayName": "수학시러!", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-09", "emoticonUrl": "https://static.solved.ac/emoticons/am-i-screwed.png",
     *           "displayName": "망?했네?", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-10", "emoticonUrl": "https://static.solved.ac/emoticons/dont-decieve.png",
     *           "displayName": "기만ㄴㄴ", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-11", "emoticonUrl": "https://static.solved.ac/emoticons/i-hate-coding.png",
     *           "displayName": "코딩시러!", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-12", "emoticonUrl": "https://static.solved.ac/emoticons/thinking-face.png",
     *           "displayName": "흠터레스팅", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-13", "emoticonUrl": "https://static.solved.ac/emoticons/why-dont-work.png",
     *           "displayName": "이게 왜 안 됨?", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-14", "emoticonUrl": "https://static.solved.ac/emoticons/well-programmed.png",
     *           "displayName": "잘짰네ㅎ", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-15", "emoticonUrl": "https://static.solved.ac/emoticons/please-dont-explode.png",
     *           "displayName": "터지면 안대...", "unlocked": true
     *         },
     *         {
     *           "emoticonId": "hanbyeol-16", "emoticonUrl": "https://static.solved.ac/emoticons/nooo.png",
     *           "displayName": "으에에~", "unlocked": false
     *         }
     *     ]
     */
    emoticons: EmoticonUnlockStatus[];

    bookmarks: TODO;

    /**
     * 받은 알림 수입니다.
     * @example 0
     */
    notificationCount: uint32;

    /**
     * 마지막으로 솔브드 상태가 변한 시각입니다.
     * @example "2024-03-17T19:24:42.000Z"
     */
    lastSolvedStateChangedAt: offsetDateTime;
  }

  /**
   * 사용자 동의 여부입니다.
   */
  model Agreements {
    /**
     * 동의한 약관 버전입니다.
     * @example "tos_v1"
     */
    tos: string;

    /**
     * 동의한 개인정보 처리방침 버전입니다.
     * @example "privacy_v2"
     */
    privacy: string;
  }

  @extension(XInternal, true)
  model EmoticonUnlockStatus extends Emoticon {
    /**
     * 해금 여부입니다.
     * @example true
     */
    unlocked: boolean;
  }

  @extension(XInternal, true)
  @withVisibility("brief")
  model UserWithSettings extends User {
    /**
     * 설정입니다.
     */
    settings: UserSettings;

    /**
     * 사용 중인 이메일 주소입니다.
     *
     * @example `"me@shiftpsh.com"`
     */
    email: string;
  }

  model UserSettings {
    twitterPostOnProblemSolve: "true";
    screenTheme: "default";
    twitterPostHandle: "true";
    twitterPostOnRatingIncrease: "true";
    twitterPostOnTierIncrease: "true";
    twitterPostOnClassIncrease: "true";
    pro_hideAds: "true";
    siteLanguage: "ko";
    showIllustBackground: "true";
    showMovieBackground: "true";
  }
}
