package WeekOfCode35

import util.HackerRankProblem
import scala.io.StdIn.{readInt, readLine}


object LuckyPurchase extends HackerRankProblem[String] {
  override def input = {
    val N = readInt()
    var input: List[(String, Int)] = List()
    for (i <- 1 to N) {
      val in = readLine
      input = input.+:((in.split(' ')(0), in.split(' ')(1).toInt))
    }
    input
  }

  override def solution(input: Any) = {
    val castedInput = input
      .asInstanceOf[List[(String, Int)]]
      .filter(i => i._2 > 0)
      .filter(i => i._2.toString.count(_ == '4') == i._2.toString.count(_ == '7'))
      .filter(i => i._2.toString.matches("(4|7)*"))
    if (castedInput.length == 0) "-1" else castedInput.sortBy(_._2).head._1
  }

  override def problemUrl = "https://www.hackerrank.com/contests/w35/challenges/lucky-purchase"
}
