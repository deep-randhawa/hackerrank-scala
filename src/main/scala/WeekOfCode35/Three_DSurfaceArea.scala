package WeekOfCode35

import util.HackerRankProblem

import scala.io.StdIn.readLine

object Three_DSurfaceArea extends HackerRankProblem[Int] {
  override def problemUrl = "https://www.hackerrank.com/contests/w35/challenges/3d-surface-area"

  override def input = {
    val i :: j :: _ = readLine.split(" ").map(_.toInt).toList
    val A = Array.ofDim[Int](i, j)
    for (k <- 0 until i)
      A(k) = readLine.split(" ").map(_.toInt)
    A
  }

  override def solution(input: Any) = {
    val A = input.asInstanceOf[Array[Array[Int]]]
    val d1 = A.length * A.head.length * 2
    val d2 = for (arr <- A) yield (arr.head + (arr zip arr.tail).map(t => (t._1 - t._2).abs).sum + arr.last)
    val d3 = for (arr <- A.transpose) yield (arr.head + (arr zip arr.tail).map(t => (t._1 - t._2).abs).sum + arr.last)
    d1 + d2.sum + d3.sum
  }
}
