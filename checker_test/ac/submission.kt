fun main(){
    val n = readLine()!!.toInt()
    val array  = readLine()!!.split(" ").map { it.toInt() }.toTypedArray()

    var max = 0
    for (i in 0 until n){
        if (array[i] > max){
            max = array[i]
        }
    }
    val idx = array.indexOf(max)

    println("$idx")
}