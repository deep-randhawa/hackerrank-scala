package util

trait HackerRankProblem[A] {
  /**
    * URL at which the problem can be found
    *
    * @return
    */
  def problemUrl: String

  /**
    * Defines how to read in the input from [[System.in]]
    *
    * The result of this [[HackerRankProblem.input]] will be passed to [[HackerRankProblem.solution]]
    *
    * @return
    */
  def input: Any

  /**
    * @param input
    * @return
    */
  def solution(input: Any): A

  def answer = print(solution(input))

}
