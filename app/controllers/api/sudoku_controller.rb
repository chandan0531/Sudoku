module Api
    class SudokuController < ApplicationController
    
        def index
            render :json => { :status => "Success"}
        end
    
        def create
            # mat = params.require(:data)
            # puts mat
            # render :json => { :status => "Success1", :data => mat}


            board = params.require(:data)
            puts board
            

            def safe(board, row, col, number)

                # col check
                for i in 0...board.size
                  if board[i][col] == number
                    return false
                  end
                end

                # row check
                for j in 0...board.size
                  if board[row][j] == number
                    return false
                  end
                end
              
                # grid check
                @sr = 3 * (row / 3)
                @sc = 3 * (col / 3)
              
                for i in @sr...@sr+3
                  for j in @sc...@sc+3
                    if board[i][j] == number
                      return false
                    end
                  end
                end
              
                return true
              
              end
              
              
              
              def helper(board,row,col)
                if row == board.size-1 && col==board.size-1
                    return true
                  end
                
                  if col == board.size
                    row = row + 1
                    col = 0
                  end
                
                  if board[row][col] != 0
                    return helper(board, row, col+1)
                    end
                
                    for i in 1..9
                      if safe(board, row, col, i)==true
                        board[row][col] = i
                        if helper(board, row, col+1)==true
                          return true
                        end
                      end
                        board[row][col] = 0
                        end
                
                  return false
              end

              if helper(board,0,0)== true
                render :json => { :status => "Success", :data => board}
              end








        end
    end
    
    end