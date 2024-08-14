
class Product {
    #pvtVar = 10;  //private var
    constructor(id=0,title='',price='',mfgDate=null) {
        this.Id = id;
        this.Title = title;
        this.Price = price;
        this.MfgDate = mfgDate;
    }
    productDetails() {
        var mdate = this.MfgDate.toLocaleString('hi-in', {day:'numeric',month:'2-digit',year:'numeric'});
        console.log(`${this.Id} ${this.Title}  ${this.Price}  ${mdate}`);
    }
}

class Store {
    ProductList = [];
    addProduct(p) {
        this.ProductList.push(p);
    }
    //...args= rest parameter
    addProduct2(...args) {
        this.ProductList = [...this.ProductList, ...args];         // ...args here is spread operator
    }
    displayProducts() {
        for (var p of this.ProductList) {
            p.productDetails();
        }
    }
    deleteProduct(id) {
        var index = this.ProductList.findIndex((v, i) => v.Id == id);
        if (index == -1)
            return false;
        else {
            this.ProductList.splice(index, 1);
            return true;
        }
    }
}



function Book(id, title, price) {
    
    this.id = id;
    this.price = price;
    this.title = title;
    this.display = function () {  return `${this.id}  ${this.title}  ${this.price}` }
}

