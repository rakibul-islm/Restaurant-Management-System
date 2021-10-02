/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author MD RAKIBUL ISLAM
 */
public class orders {
    private String name,quantity, price;
    
    public orders(String name, String quantity, String price) {
            this.name = name;
            this.quantity = quantity;
            this.price = price;
        }

    public String getName() {
        return name;
    }

    public String getQuantity() {
        return quantity;
    }

    public String getPrice() {
        return price;
    }
    
}
