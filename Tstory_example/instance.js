class Car {
    constructor(color, model) {
        this.color = color;
        this.model = model;
    }

    drive() {
        console.log(`${this.model} is driving.`);
    }
}

const myCar = new Car('red', 'Tesla Model 3');
myCar.drive(); // Tesla Model 3 is driving.

class CookieCutter {
    constructor(shape) {
        this.shape = shape;
    }

    cut() {
        console.log(`Cutting a ${this.shape}-shaped cookie.`);
    }
}

const starCookie = new CookieCutter('star');
starCookie.cut(); // Cutting a star-shaped cookie.

const heartCookie = new CookieCutter('heart');
heartCookie.cut(); // Cutting a heart-shaped cookie.