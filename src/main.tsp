import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi";
import "@typespec/openapi3";
import "@typespec/versioning";

import "./operations/main.tsp";
import "./models/main.tsp";

using TypeSpec.Http;
using TypeSpec.OpenAPI;

@TypeSpec.Versioning.versioned(DocumentationVersion)
@service({
  title: "@solvedac/unofficial-documentation",
  // Currently typespec does not support this. So we add them by scripts/openapi-patches
  // description:
  // """
  // 이 프로젝트는 [solved.ac](https://solved.ac/) API를 문서화하는 커뮤니티 프로젝트입니다.
  // 이 저장소는 원작자의 요청에 따라 언제든 지워질 수 있으며, 현재 API와 일치하지 않을 수도 있는 점 양해 부탁드립니다.

  // <sup>
  // solved.ac 서비스는 shiftpsh가 기획·개발·디자인·운영하는 프로젝트로,
  // 이 저장소와는 solved.ac의 API를 문서화해둔 것 이외에는 아무런 관련이 없습니다.
  // </sup>

  // [GitHub에서 보기](https://github.com/solvedac/unofficial-documentation)

  // **주의**: (2023/03/08~) CORS 문제로 인해 API는 사이트 내에서 호출할 수 없으므로 별도 도구를 이용해주십시오. ([#51](https://github.com/solvedac/unofficial-documentation/issues/51))

  // ![@solvedac/unofficial-documentation banner](./assets/solvedac-ud-compact.png)
  // """,
  // contact: "me@ranolp.dev",
})
@server("https://solved.ac/api/v3", "")
@info({
  description: """
    이 프로젝트는 [solved.ac](https://solved.ac/) API를 문서화하는 커뮤니티 프로젝트입니다.

    이 저장소는 원작자의 요청에 따라 언제든 지워질 수 있으며, 현재 API와 일치하지 않을 수도 있는 점 양해 부탁드립니다.


    <sup>
      solved.ac 서비스는 shiftpsh가 기획·개발·디자인·운영하는 프로젝트로,
      이 저장소와는 solved.ac의 API를 문서화해둔 것 이외에는 아무런 관련이 없습니다.
    </sup>


    [GitHub에서 보기](https://github.com/solvedac/unofficial-documentation)


    **주의**: (2023/03/08~) CORS 문제로 인해 API는 사이트 내에서 호출할 수 없으므로 별도 도구를 이용해주십시오. ([#51](https://github.com/solvedac/unofficial-documentation/issues/51))


    ![@solvedac/unofficial-documentation banner](./assets/solvedac-ud-compact.png)
    """,
  contact: {
    name: "RanolP",
    email: "me@ranolp.dev",
  },
})
namespace SolvedAC {

}

enum DocumentationVersion {
  latest: "3.2024.03+b1",
}
