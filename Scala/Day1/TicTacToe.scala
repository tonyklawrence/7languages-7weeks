package Day1

sealed abstract class Square
case class O() extends Square
case class X() extends Square
case class ?() extends Square

class Board {
  var board = (?,O,O) :: (?,X,?) :: (?,?,X) :: Nil

  def available = board.flatten.filter(s => s)

  override def toString = "%s\n%s\n%s".format(board(0), board(1), board(2))
}

object TicTacToe extends App {
  val board = new Board
  println(board)
  println(board.available)
}