using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * solved.ac 통계를 가져옵니다.
 *
 * @return
 *     solved.ac 사이트 통계 정보
 */
@summary("solved.ac 통계 가져오기")
@tag("other")
@get
@route("/site/stats")
op getSiteStatistics(): GetSiteStatistics.Ok;

namespace GetSiteStatistics {
  @extension(XInternal, true)
  model Ok extends SolvedAC.SiteStatistics {
    @statusCode status: 200;
  }
}
