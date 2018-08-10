CubicSplinePlanner csp = new CubicSplinePlanner();
Utils utils = new Utils();
PVector offset ;
ArrayList<ArrayList<Float>> spline;
void settings(){
  size(1000, 1000);
}
void setup() {

  offset = new PVector(width/2, height/2);

  float [] x = {0.0,30.0,200.0};
  float [] y = {0.0,10.0,-210.0};
  spline = csp.calc_spline_course(x, y, 0.5);

}

void draw(){
  background(0);
  stroke(255);
  pushMatrix(); 
  translate(offset.x, offset.y);
   for (int i = 0; i < spline.get(0).size();++i){
    point(spline.get(0).get(i), -spline.get(1).get(i));
   }

  popMatrix();
}
