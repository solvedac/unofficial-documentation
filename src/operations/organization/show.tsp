using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 해당 ID의 단체 정보를 가져옵니다.
 *
 * @return
 *     단체 정보를 가져옵니다.
 */
@summary("단체 ID로 단체 정보 가져오기")
@tag("organization")
@get
@route("/organization/show")
op getOrganizationById(
  /**
   * 요청할 단체의 ID
   */
  @query
  organizationId: string,
): GetOrganizationById.Ok;

namespace GetOrganizationById {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body organization: Organization;
  }
}
