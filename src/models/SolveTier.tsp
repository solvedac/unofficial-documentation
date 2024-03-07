namespace SolvedAC;

/**
 * <solved-icon type="solve-tier:1"></solved-icon> <span class="solve-tier bronze5">Bronze V</span>를 1,
 * <solved-icon type="solve-tier:2"></solved-icon> <span class="solve-tier bronze4">Bronze IV</span>를 2,
 * ...,
 * <solved-icon type="solve-tier:30"></solved-icon> <span class="solve-tier ruby1">Ruby I</span>을 30,
 * <solved-icon type="solve-tier:31"></solved-icon> <span class="solve-tier master">Master</span>를 31로 표현하는 문제해결 티어입니다.
 * 자세한 값 정보는 표1. 문제 풀이 레이팅 표를 펼쳐 참고하십시오.
 *
 * <details>
 *   <summary>
 *     표1. 문제 풀이 레이팅 표
 *   </summary>
 *
 *   | 수치 | 이름                                                                                                    |                                     요구 레이팅 |
 *   | ---: | :------------------------------------------------------------------------------------------------------ | ----------------------------------------------: |
 *   |    1 |        <solved-icon type="solve-tier:1"></solved-icon> <span class="solve-tier bronze5">Bronze V</span> | <span class="bold solve-tier bronze5">30</span> |
 *   |    2 |       <solved-icon type="solve-tier:2"></solved-icon> <span class="solve-tier bronze4">Bronze IV</span> | <span class="bold solve-tier bronze4">60</span> |
 *   |    3 |      <solved-icon type="solve-tier:3"></solved-icon> <span class="solve-tier bronze3">Bronze III</span> | <span class="bold solve-tier bronze3">90</span> |
 *   |    4 |       <solved-icon type="solve-tier:4"></solved-icon> <span class="solve-tier bronze2">Bronze II</span> | <span class="bold solve-tier bronze2">120</span> |
 *   |    5 |        <solved-icon type="solve-tier:5"></solved-icon> <span class="solve-tier bronze1">Bronze I</span> | <span class="bold solve-tier bronze1">150</span> |
 *   |    6 |        <solved-icon type="solve-tier:6"></solved-icon> <span class="solve-tier silver5">Silver V</span> | <span class="bold solve-tier silver5">200</span> |
 *   |    7 |       <solved-icon type="solve-tier:7"></solved-icon> <span class="solve-tier silver4">Silver IV</span> | <span class="bold solve-tier silver4">300</span> |
 *   |    8 |      <solved-icon type="solve-tier:8"></solved-icon> <span class="solve-tier silver3">Silver III</span> | <span class="bold solve-tier silver3">400</span> |
 *   |    9 |       <solved-icon type="solve-tier:9"></solved-icon> <span class="solve-tier silver2">Silver II</span> | <span class="bold solve-tier silver2">500</span> |
 *   |   10 |       <solved-icon type="solve-tier:10"></solved-icon> <span class="solve-tier silver1">Silver I</span> | <span class="bold solve-tier silver1">650</span> |
 *   |   11 |           <solved-icon type="solve-tier:11"></solved-icon> <span class="solve-tier gold5">Gold V</span> | <span class="bold solve-tier gold5">800</span> |
 *   |   12 |          <solved-icon type="solve-tier:12"></solved-icon> <span class="solve-tier gold4">Gold IV</span> | <span class="bold solve-tier gold4">950</span> |
 *   |   13 |         <solved-icon type="solve-tier:13"></solved-icon> <span class="solve-tier gold3">Gold III</span> | <span class="bold solve-tier gold3">1100</span> |
 *   |   14 |          <solved-icon type="solve-tier:14"></solved-icon> <span class="solve-tier gold2">Gold II</span> | <span class="bold solve-tier gold2">1250</span> |
 *   |   15 |           <solved-icon type="solve-tier:15"></solved-icon> <span class="solve-tier gold1">Gold I</span> | <span class="bold solve-tier gold1">1400</span> |
 *   |   16 |   <solved-icon type="solve-tier:16"></solved-icon> <span class="solve-tier platinum5">Platinum V</span> | <span class="bold solve-tier platinum5">1600</span> |
 *   |   17 |  <solved-icon type="solve-tier:17"></solved-icon> <span class="solve-tier platinum4">Platinum IV</span> | <span class="bold solve-tier platinum4">1750</span> |
 *   |   18 | <solved-icon type="solve-tier:18"></solved-icon> <span class="solve-tier platinum3">Platinum III</span> | <span class="bold solve-tier platinum3">1900</span> |
 *   |   19 |  <solved-icon type="solve-tier:19"></solved-icon> <span class="solve-tier platinum2">Platinum II</span> | <span class="bold solve-tier platinum2">2000</span> |
 *   |   20 |   <solved-icon type="solve-tier:20"></solved-icon> <span class="solve-tier platinum1">Platinum I</span> | <span class="bold solve-tier platinum1">2100</span> |
 *   |   21 |     <solved-icon type="solve-tier:21"></solved-icon> <span class="solve-tier diamond5">Diamond V</span> | <span class="bold solve-tier diamond5">2200</span> |
 *   |   22 |    <solved-icon type="solve-tier:22"></solved-icon> <span class="solve-tier diamond4">Diamond IV</span> | <span class="bold solve-tier diamond4">2300</span> |
 *   |   23 |   <solved-icon type="solve-tier:23"></solved-icon> <span class="solve-tier diamond3">Diamond III</span> | <span class="bold solve-tier diamond3">2400</span> |
 *   |   24 |    <solved-icon type="solve-tier:24"></solved-icon> <span class="solve-tier diamond2">Diamond II</span> | <span class="bold solve-tier diamond2">2500</span> |
 *   |   25 |     <solved-icon type="solve-tier:25"></solved-icon> <span class="solve-tier diamond1">Diamond I</span> | <span class="bold solve-tier diamond1">2600</span> |
 *   |   26 |           <solved-icon type="solve-tier:26"></solved-icon> <span class="solve-tier ruby5">Ruby V</span> | <span class="bold solve-tier ruby5">2700</span> |
 *   |   27 |          <solved-icon type="solve-tier:27"></solved-icon> <span class="solve-tier ruby4">Ruby IV</span> | <span class="bold solve-tier ruby4">2800</span> |
 *   |   28 |         <solved-icon type="solve-tier:28"></solved-icon> <span class="solve-tier ruby3">Ruby III</span> | <span class="bold solve-tier ruby3">2850</span> |
 *   |   29 |          <solved-icon type="solve-tier:29"></solved-icon> <span class="solve-tier ruby2">Ruby II</span> | <span class="bold solve-tier ruby2">2900</span> |
 *   |   30 |           <solved-icon type="solve-tier:30"></solved-icon> <span class="solve-tier ruby1">Ruby I</span> | <span class="bold solve-tier ruby1">2950</span> |
 *   |   31 |          <solved-icon type="solve-tier:31"></solved-icon> <span class="solve-tier master">Master</span> | <span class="bold solve-tier master">3000</span> |
 *
 * </details>
 */
enum SolveTier {
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
