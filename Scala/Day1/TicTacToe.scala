package Day1

sealed abstract class Square
case class O() extends Square
case class X() extends Square
case class ?() extends Square

class Board {
  val board = (?,?,?) :: (?,?,?) :: (?,?,?) :: Nil

  override def toString = "%s\n%s\n%s".format(board(0), board(1), board(2))
}

object TicTacToe extends App {
  println(new Board)
}