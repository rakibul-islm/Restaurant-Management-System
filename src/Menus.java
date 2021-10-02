/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author MD RAKIBUL ISLAM
 */
class Menus {


        private String menuID, name, price, type,date,time,placement,quantity;

        public Menus(String menuID, String name, String price, String type) {
            this.menuID = menuID;
            this.name = name;
            this.price = price;
            this.type = type;
        }
        public Menus(String date,String time, String name,String quantity, String price, String placement) {
            this.date = date;
            this.time = time;
            this.name = name;
            this.quantity = quantity;
            this.price = price;
            this.placement = placement;
        }
        public Menus(String time, String name,String quantity, String price, String placement) {
            this.time = time;
            this.name = name;
            this.quantity = quantity;
            this.price = price;
            this.placement = placement;
        }

    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public String getPlacement() {
        return placement;
    }

    public String getQuantity() {
        return quantity;
    }

    public String getMenuID() {
        return menuID;
    }

    public String getName() {
        return name;
    }

    public String getPrice() {
        return price;
    }

    public String getType() {
        return type;
    }

}
    

        
 
