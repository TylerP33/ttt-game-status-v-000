# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], #combination[0]
    [0, 3, 6], [1, 4, 7], [2, 5, 8], #vertical - array 1
    [0, 4, 8], [2, 4, 6], #diagnol - array 2
]

def won?(board)
  WIN_COMBINATIONS.select do |combinations|
    combinations[0] = [board[0], board[1], [board[2]]]
    combinations[1] = [board[0], board[1], [board[2]]]
    combinations[2] =[board[0], board[1], [board[2]]]

   end

end
