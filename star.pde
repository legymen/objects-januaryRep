class Star{

    color col;

    float size;

    PVector position;
    PVector velocity;

    Star(color _col, PVector _pos, PVector _vel){
        col = _col;
        position = _pos;
        velocity = _vel;

        size = random(10, 30);
    }

    void run(){
        update();
        render();
    }

    void render(){
        fill(col);
        ellipse(position.x, position.y, size, size);
    }

    void update(){
        position.add(velocity);

    }
}
