/**
 * 사용자가 사용할 수 있는 아이템입니다.
 */
model Item {
  /**
   * ID입니다.
   * @example "streak-freeze"
   */
  itemId: string;

  /**
   * 아이템 사진으로 가는 하이퍼링크입니다.
   * @example "https://static.solved.ac/item/freeze-small-simple.svg"
   */
  itemImageUrl: url;

  /**
   * 최대 소유 가능 개수입니다.
   * 사람에 따라 다를 수 있습니다.
   * @example 2
   */
  inventoryMaxUnits: uint32;

  /**
   * 사용 가능 여부입니다.
   * @example true
   */
  usable: boolean;

  /**
   * 국제화된 이름입니다.
   * @example "스트릭 프리즈"
   */
  displayName: string;

  /**
   * 국제화된 설명입니다.
   * @example "미리 장착해 두면 어제 문제 푸는 걸 잊었더라도 스트릭이 깨지지 않습니다. 단, 스트릭 길이가 늘어나지는 않습니다.\n인벤토리에서 장착해서 사용할 수 있습니다."
   */
  displayDescription: string;
}
