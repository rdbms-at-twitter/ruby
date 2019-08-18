class Tax
    @@tax_rate = 0.08
    def self.tax_rate= (n)
        @@tax_rate = n
    end
    def self.priceWithTax(price)
# to_iメソッドは文字列をINTに変換
      return (price * (1.0 + @@tax_rate)).to_i
    end
    def self.tax(price)
        return (price * @@tax_rate).to_i
    end
end
 
price = 10000
# to_sメソッドはintをStringに変換
puts("価格：" + price.to_s)
puts("消費税8% - 201908")
puts("税込：" + Tax.priceWithTax(price).to_s)
puts("税額：" + Tax.tax(price).to_s)
# taxレートを上書き
Tax.tax_rate = 0.1
puts("消費税10% - 201909")
puts("税込：" + Tax.priceWithTax(price).to_s)
puts("税額：" + Tax.tax(price).to_s)
# taxレートをさらに上書き
Tax.tax_rate = 0.12
puts("消費税12% - Don't know")
puts("税込：" + Tax.priceWithTax(price).to_s)
puts("税額：" + Tax.tax(price).to_s)
