void setup() {
    size(800, 800);
  background(#FFFFFF);
  drawLevel(width / 2, height / 2, 3, 100);
}

public void drawLevel(int xCenterSqu, int yCenterSqu, int numLevels, int sideLength) {

  stroke(0);
  //centred around the given x and y values
  rect(xCenterSqu - (sideLength / 2), yCenterSqu - (sideLength / 2), sideLength, sideLength);

  
  if (numLevels > 0) {
    drawLevel(xCenterSqu - sideLength / 2, yCenterSqu - sideLength / 2, numLevels - 1, sideLength / 2); // Top-left
    drawLevel(xCenterSqu + sideLength / 2, yCenterSqu - sideLength / 2, numLevels - 1, sideLength / 2); // Top-right
    drawLevel(xCenterSqu - sideLength / 2, yCenterSqu + sideLength / 2, numLevels - 1, sideLength / 2); // Bottom-left
    drawLevel(xCenterSqu + sideLength / 2, yCenterSqu + sideLength / 2, numLevels - 1, sideLength / 2); // Bottom-right
  }
  
}
