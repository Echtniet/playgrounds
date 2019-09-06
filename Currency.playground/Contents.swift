struct CurrencyConverter{
    private var usDollar:Double
    
    var euros:Double{
        get{
            return usDollar * 0.91
        }
        set{
            usDollar = newValue * 1.1
        }
    }
    
    var rupees:Double{
        get{
            return usDollar * 71.98
        }
        set{
            usDollar = newValue * 0.014
        }
    }
    
    var isRich:Bool{
        get{
            if usDollar > 100{
                return true
            }
            return false
        }
    }
    
    mutating func reset(){
        usDollar = 0
    }
}
