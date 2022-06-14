# what is actually sent is who wins
# tennis(player_name)
#  when player 1 wins, increment player 1 win count, oherwise increment player 2 win count
# player1 "win"
# player2 "loss"

def tennis_winner(player_name)
    p1_score = 0
    p2_score = 0
    winners = player_name.split
    winners.each do |winner|
    if winner == "player_1"
        p1_score += 1
    else
        p2_score += 1
    end
    end
    return("#{p1_score}, #{p2_score}")
end

def match_outcome(p1_score, p2_score)
    if p1_score >= 4 && p1_score != p2_score && p1_score - p2_score > 1
        return "Player 1 wins"
    elsif p2_score >= 4 && p2_score != p1_score && p2_score - p1_score > 1
        return "Player 2 wins"
    elsif p1_score >= 3 && p1_score == p2_score
        return "Deuce"
    elsif p1_score > 3 && p1_score - p2_score == 1
        return "Advantage player 1"
    elsif p2_score > 3 && p2_score - p1_score == 1
        return "Advantage player 2"
    else
        return ""
    end
end