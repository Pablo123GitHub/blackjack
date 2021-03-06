class Card 
    attr_accessor :suit, :rank, :show

    SUITS = ['Spades', 'Clubs', 'Diamonds', 'Hearts']
    RANKS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']

    def initialize(suit, rank)
        @show = true
        is_valid_suit_and_rank(suit, rank)
    end 

    def show_suit_rank
        if show
        "#{rank} of #{suit}"
        else   
            ""
        end 
    end 

    private 

    def is_valid_suit_and_rank(suit, rank)
        if SUITS.include?(suit) && RANKS.include?(rank)
            @suit = suit
            @rank = rank
        else 
            @suit = 'UNKNOWN'
            @rank = 'UNKNOWN'
        end 
    end 


end 
