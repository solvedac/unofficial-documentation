using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 코인 → 별조각 환율을 가져옵니다.
 *
 * @return
 *     환율을 가져옵니다.
 */
@summary("코인 → 별조각 환율 가져오기")
@tag("coins")
@get
@route("/coins/exchange_rate")
op getCoinStardustExchangeRate(): GetCoinStardustExchangeRate.Ok;

namespace GetCoinStardustExchangeRate {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body data: ExchangeRate;
  }

  @extension(XInternal, true)
  model ExchangeRate {
    /**
     * 1 코인을 별조각으로 바꾸는 환율입니다.
     * 별조각을 코인으로 환전할 때에는 수수료가 1%(소수점은 내림) 붙습니다.
     * @example 1498
     */
    rate: uint64;
  }
}
