#!mainFile "../main.opy"

# 顺时针90度
macro Vector.clockwise = vect(-self.z, self.y, self.x)

# 逆时针90度
macro Vector.counterclockwise = vect(self.z, self.y, -self.x)

# 相反方向
macro Vector.backforward = vect(-self.x, self.y, -self.z)