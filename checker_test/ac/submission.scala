import scala.io.StdIn._

object Test {
  def main(args: Array[String]): Unit = {
    val n = readInt()
    
    val arr = readLine().split(" ").map(_.toInt)

    val max = arr.max
    val maxIndex = arr.indexOf(max)

    println(maxIndex)
  }
}
