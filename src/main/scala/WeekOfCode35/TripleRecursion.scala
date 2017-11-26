package WeekOfCode35

import util.HackerRankProblem

import scala.io.StdIn.readLine

object TripleRecursion extends HackerRankProblem[Unit] {

  override def input = {
    readLine.split(" ").map(_.toInt) match {
      case Array(a, b, c) => (a, b, c)
    }
  }

  override def solution(input: Any) = {
    val (n, m, k) = input.asInstanceOf[(Int, Int, Int)]
    val matrix = new Matrix(n, m, k)
    for (i <- 0 to n - 1) {
      for (j <- 0 to n - 1) {
        print(matrix.get(i, j) + " ")
      }
      println()
    }
  }

  override def answer: Unit = solution(input)

  override def problemUrl = "https://www.hackerrank.com/contests/w35/challenges/triple-recursion"

  private class Matrix(val N: Int, val M: Int, val K: Int) {
    private val _matrix = Array.fill[Int](N, N)(Int.MinValue)

    def get(i: Int, j: Int): Int = {
      if (_matrix(i)(j) != Int.MinValue) return _matrix(i)(j)
      if (i == 0 && j == 0) update(i, j, M)
      else if (i == j) update(i, j, get(i - 1, j - 1) + K)
      else if (i > j) update(i, j, get(i - 1, j) - 1)
      else if (i < j) update(i, j, get(i, j - 1) - 1)
      else Int.MinValue
    }

    private def update(i: Int, j: Int, v: Int) = {
      _matrix(i)(j) = v
      v
    }
  }

}
