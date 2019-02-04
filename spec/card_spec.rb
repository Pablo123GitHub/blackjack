require 'card'

describe Card do    
    before do    
        suit = "Diamonds"
        rank = "8"
        @card = Card.new(suit, rank)
    end 

    context "check attr_accessors getters/setters methods" do    
        it "responds to suit " do  
            expect(@card).to respond_to(:suit)
        end 
    
        it "responds to rank" do    
            expect(@card).to respond_to(:rank)
        end 
    
        it "responds to show" do   
            expect(@card).to respond_to(:show)
        end 
    
        it "'show' method is true at the start" do    
            expect(@card.show).to eq(true)
        end 
    
        it "'suit' method returns Diamonds" do    
            expect(@card.suit).to eq("Diamonds")
        end 
    
        it "'rank' method returns '8'" do   
            expect(@card.rank).to eq("8")
        end 
    end 

    it "Shows rank and suit if show is true" do    
        expect(@card.show_suit_rank).to eq("8 of Diamonds")
    end 


    it "does NOT Show rank and suit if show is true" do  
        @card.show = false  
        expect(@card.show_suit_rank).to eq("")
    end 


   





    





end 