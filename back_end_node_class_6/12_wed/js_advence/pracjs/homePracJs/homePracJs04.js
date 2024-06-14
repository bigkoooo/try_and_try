class Shape{
    constructor(width,height){
        this.width = width;
        this.height = height;
    }

    getArea(){
        return this.width * this.height
    }
}

let rec1 = new Shape(3,4);

class Rectangle extends Shape{
    constructor(width, height){
        super(width, height)
    }

    getDiagonal(){
        return Math.sqrt(this.width**2 + this.height**2)
    }
}


let rec2 = new Rectangle(3,4);
console.log(rec2.getArea());
console.log(rec2.getDiagonal());

class Triangle extends Shape{
    constructor(width, height){
        super(width, height)
    }

    getTriangle(){
        return (this.width * this.height)/2
    }
}


let Tri = new Triangle(3,4);
console.log(Tri.getTriangle());

class Circle extends Shape{
    constructor(width, height){
        super(width, height)
        this.radius = width
    }

    getOval(){
        return Math.PI * this.radius/2 * this.height/2
    }
}


let Oval = new Triangle(3,4);
console.log(Tri.getTriangle());

