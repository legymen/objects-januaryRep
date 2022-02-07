ArrayList<Star> stars;

void setup(){
    size(800, 800);
    stars = new ArrayList<Star>();
}


void draw(){
    background(0);

    for (int i = 0; i < stars.size(); i++) {
        Star star = stars.get(i);
        star.run();
    }

    if (mousePressed){
        PVector currentPos = new PVector(mouseX, mouseY);
        PVector randomVelocity = new PVector(random(-10, 10), random(-10, 10));
        color randomColor = color(random(0,255), random(0,255), random(0,255));
        Star newStar = new Star(randomColor, currentPos, randomVelocity);
        stars.add(newStar);
    }
}
