boolean rebote()
{
  return intersects(bolaPosX, bolaPosY, bolaTam, rectPosX, rectPosY, rectWidth, rectHeight);
}

boolean intersects(float circuloX, float circuloY, float rad, float rectX, float rectY, float rectW, float rectH)
{
  float circleDistanceX = abs(circuloX - rectX);
  float circleDistanceY = abs(circuloY - rectY);

  if (circleDistanceX > (rectW + rad/2.0)) { 
    return false;
  }
  if (circleDistanceY > (rectH + rad/2.0)) { 
    return false;
  }

  if (circleDistanceX <= (rectW/2.0)) { 
    return true;
  } 
  if (circleDistanceY <= (rectH/2.0)) { 
    return true;
  }

  float cornerDistance_sq = pow((circleDistanceX - rectW/2.0), 2) +
                            pow((circleDistanceY - rectH/2.0), 2);

  return (cornerDistance_sq <= (pow(rad/2.0, 2)));
}
