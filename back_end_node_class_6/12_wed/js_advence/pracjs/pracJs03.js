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
// console.log(rec1.getArea());


// 클래스의 상속
class Rectangle extends Shape{
    constructor(width,height){
        super(width,height)
        
        
    }
    getDiagonal() {
        return Math.sqrt(this.height**2+this.width**2)
      }

}

const rec2 = new Rectangle(3,4);

console.log(rec2.getArea());
console.log(rec2.getDiagonal());

// 클래스의 상속 삼각형 넓이 구하기
class Triangle extends Shape{
    constructor(width,height){
        super(width,height)
        
        
    }
    getArea() {
        return (this.height * this.width) / 2
      }

}

const tri= new Triangle(3,4);
console.log(tri.getArea());

// 클래스의 상속 원 넓이 구하기
class Oval extends Shape{
    constructor(width,height){
        super(width,height)
        
        
    }
    getArea() {
            return Math.PI * this.width/2 *this.height/2
    }

}

const circle= new Oval(3,4);
console.log(circle.getArea());