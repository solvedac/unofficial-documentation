using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 코인샵에서 판매하고 있는 상품입니다.
 */
model CoinShopProduct {
  /**
   * 재고(Stock Keeping Unit) ID입니다.
   * @example 1
   */
  skuId: uint32;

  item: Item;

  /**
   * 1회 구매 시 획득하는 아이템 개수입니다.
   * @example 1
   */
  units: uint32;

  /**
   * 가격입니다.
   * 코인의 경우 나누기 100을 해야 표시 가격이 됩니다.
   * @example 99
   */
  price: uint32;

  /**
   * 가격 단위입니다.
   * @example "coins"
   */
  priceUnit: "coins" | "stardusts";

  /**
   * 아이템 사용 시간 제한 여부입니다.
   * @example false
   */
  itemUseTimeLimited: boolean;

  /**
   * 아이템 구매 기간 제한 여부입니다.
   * @example false
   */
  itemSellTimeLimited: boolean;
}
