namespace SolvedAC;

/**
 * <solved-icon type="arena-tier:0"></solved-icon> <span class="arena-tier unrated">Unrated</span>를 0,
 * <solved-icon type="arena-tier:1"></solved-icon> <span class="arena-tier c">C</span>를 1,
 * ...,
 * <solved-icon type="arena-tier:12"></solved-icon> <span class="arena-tier sss+">SSS+</span>을 12,
 * <solved-icon type="arena-tier:13"></solved-icon> <span class="arena-tier x">X</span>를 13으로 표현하는 아레나 티어입니다.
 * 자세한 값 정보는 표1. 아레나 레이팅 표를 펼쳐 참고하십시오.
 *
 * <details>
 *   <summary>
 *     표1. 아레나 레이팅 표
 *   </summary>
 *
 *   | 수치 | 이름                                                                                            |                                    요구 레이팅 |
 *   | ---: | :---------------------------------------------------------------------------------------------- | ---------------------------------------------: |
 *   |    0 | <solved-icon type="arena-tier:0"></solved-icon> <span class="arena-tier unrated">Unrated</span> | <span class="bold arena-tier unrated">-</span> |
 *   |    1 |             <solved-icon type="arena-tier:1"></solved-icon> <span class="arena-tier c">C</span> |       <span class="bold arena-tier c">1</span> |
 *   |    2 |           <solved-icon type="arena-tier:2"></solved-icon> <span class="arena-tier c+">C+</span> |    <span class="bold arena-tier c+">400</span> |
 *   |    3 |             <solved-icon type="arena-tier:3"></solved-icon> <span class="arena-tier b">B</span> |     <span class="bold arena-tier b">800</span> |
 *   |    4 |           <solved-icon type="arena-tier:4"></solved-icon> <span class="arena-tier b+">B+</span> |   <span class="bold arena-tier b+">1000</span> |
 *   |    5 |             <solved-icon type="arena-tier:5"></solved-icon> <span class="arena-tier a">A</span> |    <span class="bold arena-tier a">1200</span> |
 *   |    6 |           <solved-icon type="arena-tier:6"></solved-icon> <span class="arena-tier a+">A+</span> |   <span class="bold arena-tier a+">1400</span> |
 *   |    7 |             <solved-icon type="arena-tier:7"></solved-icon> <span class="arena-tier s">S</span> |    <span class="bold arena-tier s">1600</span> |
 *   |    8 |           <solved-icon type="arena-tier:8"></solved-icon> <span class="arena-tier s+">S+</span> |   <span class="bold arena-tier s+">1800</span> |
 *   |    9 |           <solved-icon type="arena-tier:9"></solved-icon> <span class="arena-tier ss">SS</span> |   <span class="bold arena-tier ss">2000</span> |
 *   |   10 |        <solved-icon type="arena-tier:10"></solved-icon> <span class="arena-tier ss+">SS+</span> |  <span class="bold arena-tier ss+">2200</span> |
 *   |   11 |        <solved-icon type="arena-tier:11"></solved-icon> <span class="arena-tier sss">SSS</span> |  <span class="bold arena-tier sss">2400</span> |
 *   |   12 |      <solved-icon type="arena-tier:12"></solved-icon> <span class="arena-tier sss+">SSS+</span> | <span class="bold arena-tier sss+">2600</span> |
 *   |   13 |            <solved-icon type="arena-tier:13"></solved-icon> <span class="arena-tier x">X</span> |    <span class="bold arena-tier x">3000</span> |
 *
 * </details>
 */
enum ArenaTier {
  Unknown: 0,
  C: 1,
  CPlus: 2,
  B: 3,
  BPlus: 4,
  A: 5,
  APlus: 6,
  S: 7,
  SPlus: 8,
  SS: 9,
  SSPlus: 10,
  SSS: 11,
  SSSPlus: 12,
  X: 13,
}
