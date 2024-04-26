using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 코인샵에서 팔고 있는 상품 목록을 가져옵니다.
 *
 * @return
 *     상품 목록을 가져옵니다.
 */
@summary("코인샵 상품 목록 가져오기")
@tag("coins")
@get
@route("/coins/shop/list")
op getCoinShopProducts(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,
): GetCoinShopProducts.Ok;

namespace GetCoinShopProducts {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: CoinShopProduct[];
  }
}
