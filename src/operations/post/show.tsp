using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace SolvedAC;

/**
 * 해당 제목의 게시글을 가져옵니다.
 *
 * @return
 *     게시글을 가져옵니다.
 */
@summary("게시글 제목으로 게시글 가져오기")
@tag("post")
@get
@route("/post/show")
op getPostById(
  /**
   * 응답을 받을 언어입니다.
   */
  @header
  `x-solvedac-language`?: Language,

  /**
   * 요청할 게시글의 제목
   */
  @query
  postId: string,
): GetPostById.Ok;

namespace GetPostById {
  @extension(XInternal, true)
  model Ok {
    @statusCode status: 200;
    @body post: Post;
  }
}
