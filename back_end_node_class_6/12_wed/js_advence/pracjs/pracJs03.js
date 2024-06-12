class Shape {
    constructor(width,height){
        this.width = width;
        this.height = height;
    }

    getArea(){
        return this.width * this.height;
    }
}



let rec1 = new Shape(3,4);
console.log(rec1.getArea());


// 클래스의 상속
class Triangle extends Shape{
    constructor(width,height,divide){
        super(width,height,divide)
        this.divide =divide;
        
    }
    getTriangle() {
        
      }

}