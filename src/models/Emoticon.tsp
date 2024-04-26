using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 난이도 투표 등에 사용할 수 있는 이모티콘입니다.
 */
model Emoticon {
  /**
   * 고유 식별자입니다.
   * @example "hanbyeol-01"
   */
  emoticonId: string;

  /**
   * 사진으로 가는 하이퍼링크입니다.
   * @example "https://static.solved.ac/emoticons/fool.png"
   */
  emoticonUrl: url;

  /**
   * 한국어 이름입니다.
   * @example "난 바보야"
   */
  displayName: string;
}
