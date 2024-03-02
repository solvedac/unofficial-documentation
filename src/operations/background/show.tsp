using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 배경 정보를 가져옵니다.
 *
 * @return
 *     요청한 배경 ID에 알맞은 배경 정보를 반환합니다.
 */
@summary("배경 정보 가져오기")
@tag("background")
@get
@route("/background/show")
op getBackground(@query backgroundId: string): GetBackground.Ok;

namespace GetBackground {
  @extension("x-internal", "true")
  model Ok is Background {
    @statusCode status: 200;
  }
}
