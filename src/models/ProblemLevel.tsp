namespace SolvedAC;

/**
 * <solved-icon type="solve-tier:0"></solved-icon> <span class="solve-tier zero">Unrated</span> / <solved-icon type="solve-tier:nr"></solved-icon> <span class="solve-tier zero">Not Ratable</span>를 0,
 * <solved-icon type="solve-tier:1"></solved-icon> <span class="solve-tier bronze5">Bronze V</span>를 1,
 * <solved-icon type="solve-tier:2"></solved-icon> <span class="solve-tier bronze4">Bronze IV</span>를 2,
 * ...,
 * <solved-icon type="solve-tier:29"></solved-icon> <span class="solve-tier ruby2">Ruby II</span>을 29,
 * <solved-icon type="solve-tier:30"></solved-icon> <span class="solve-tier ruby1">Ruby I</span>를 30으로 표현하는 문제 난이도입니다.
 * 자세한 값 정보는 표1. 문제 난이도 표를 펼쳐 참고하십시오.
 *
 * <details>
 *   <summary>
 *     표1. 문제 난이도 표
 *   </summary>
 *
 *   | 수치 | 이름                                                                                                                                                                                             |
 *   | ---: | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
 *   |    0 | <solved-icon type="solve-tier:0"></solved-icon> <span class="solve-tier zero">Unrated</span> / <solved-icon type="solve-tier:nr"></solved-icon> <span class="solve-tier zero">Not Ratable</span> |
 *   |    1 |                                                                                                 <solved-icon type="solve-tier:1"></solved-icon> <span class="solve-tier bronze5">Bronze V</span> |
 *   |    2 |                                                                                                <solved-icon type="solve-tier:2"></solved-icon> <span class="solve-tier bronze4">Bronze IV</span> |
 *   |    3 |                                                                                               <solved-icon type="solve-tier:3"></solved-icon> <span class="solve-tier bronze3">Bronze III</span> |
 *   |    4 |                                                                                                <solved-icon type="solve-tier:4"></solved-icon> <span class="solve-tier bronze2">Bronze II</span> |
 *   |    5 |                                                                                                 <solved-icon type="solve-tier:5"></solved-icon> <span class="solve-tier bronze1">Bronze I</span> |
 *   |    6 |                                                                                                 <solved-icon type="solve-tier:6"></solved-icon> <span class="solve-tier silver5">Silver V</span> |
 *   |    7 |                                                                                                <solved-icon type="solve-tier:7"></solved-icon> <span class="solve-tier silver4">Silver IV</span> |
 *   |    8 |                                                                                               <solved-icon type="solve-tier:8"></solved-icon> <span class="solve-tier silver3">Silver III</span> |
 *   |    9 |                                                                                                <solved-icon type="solve-tier:9"></solved-icon> <span class="solve-tier silver2">Silver II</span> |
 *   |   10 |                                                                                                <solved-icon type="solve-tier:10"></solved-icon> <span class="solve-tier silver1">Silver I</span> |
 *   |   11 |                                                                                                    <solved-icon type="solve-tier:11"></solved-icon> <span class="solve-tier gold5">Gold V</span> |
 *   |   12 |                                                                                                   <solved-icon type="solve-tier:12"></solved-icon> <span class="solve-tier gold4">Gold IV</span> |
 *   |   13 |                                                                                                  <solved-icon type="solve-tier:13"></solved-icon> <span class="solve-tier gold3">Gold III</span> |
 *   |   14 |                                                                                                   <solved-icon type="solve-tier:14"></solved-icon> <span class="solve-tier gold2">Gold II</span> |
 *   |   15 |                                                                                                    <solved-icon type="solve-tier:15"></solved-icon> <span class="solve-tier gold1">Gold I</span> |
 *   |   16 |                                                                                            <solved-icon type="solve-tier:16"></solved-icon> <span class="solve-tier platinum5">Platinum V</span> |
 *   |   17 |                                                                                           <solved-icon type="solve-tier:17"></solved-icon> <span class="solve-tier platinum4">Platinum IV</span> |
 *   |   18 |                                                                                          <solved-icon type="solve-tier:18"></solved-icon> <span class="solve-tier platinum3">Platinum III</span> |
 *   |   19 |                                                                                           <solved-icon type="solve-tier:19"></solved-icon> <span class="solve-tier platinum2">Platinum II</span> |
 *   |   20 |                                                                                            <solved-icon type="solve-tier:20"></solved-icon> <span class="solve-tier platinum1">Platinum I</span> |
 *   |   21 |                                                                                              <solved-icon type="solve-tier:21"></solved-icon> <span class="solve-tier diamond5">Diamond V</span> |
 *   |   22 |                                                                                             <solved-icon type="solve-tier:22"></solved-icon> <span class="solve-tier diamond4">Diamond IV</span> |
 *   |   23 |                                                                                            <solved-icon type="solve-tier:23"></solved-icon> <span class="solve-tier diamond3">Diamond III</span> |
 *   |   24 |                                                                                             <solved-icon type="solve-tier:24"></solved-icon> <span class="solve-tier diamond2">Diamond II</span> |
 *   |   25 |                                                                                              <solved-icon type="solve-tier:25"></solved-icon> <span class="solve-tier diamond1">Diamond I</span> |
 *   |   26 |                                                                                                    <solved-icon type="solve-tier:26"></solved-icon> <span class="solve-tier ruby5">Ruby V</span> |
 *   |   27 |                                                                                                   <solved-icon type="solve-tier:27"></solved-icon> <span class="solve-tier ruby4">Ruby IV</span> |
 *   |   28 |                                                                                                  <solved-icon type="solve-tier:28"></solved-icon> <span class="solve-tier ruby3">Ruby III</span> |
 *   |   29 |                                                                                                   <solved-icon type="solve-tier:29"></solved-icon> <span class="solve-tier ruby2">Ruby II</span> |
 *   |   30 |                                                                                                    <solved-icon type="solve-tier:30"></solved-icon> <span class="solve-tier ruby1">Ruby I</span> |
 *
 * </details>
 */
enum ProblemLevel {
  Zero: 0,
  Bronze5: 1,
  Bronze4: 2,
  Bronze3: 3,
  Bronze2: 4,
  Bronze1: 5,
  Silver5: 6,
  Silver4: 7,
  Silver3: 8,
  Silver2: 9,
  Silver1: 10,
  Gold5: 11,
  Gold4: 12,
  Gold3: 13,
  Gold2: 14,
  Gold1: 15,
  Platinum5: 16,
  Platinum4: 17,
  Platinum3: 18,
  Platinum2: 19,
  Platinum1: 20,
  Diamond5: 21,
  Diamond4: 22,
  Diamond3: 23,
  Diamond2: 24,
  Diamond1: 25,
  Ruby5: 26,
  Ruby4: 27,
  Ruby3: 28,
  Ruby2: 29,
  Ruby1: 30,
  Master: 31,
}
