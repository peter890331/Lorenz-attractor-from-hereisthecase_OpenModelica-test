model Lorenz_test "Lorenz system"

  parameter Real sigma = 10;
  parameter Real rho = 28;
  parameter Real beta = 8/3;

  parameter Real x0=1 "x初始值";
  parameter Real y0=1 "y初始值";
  parameter Real z0=1 "z初始值";

  Real x "x-coord 狀態變數";
  Real y "y-coord 狀態變數";
  Real z "z-coord 狀態變數";
initial equation
  x = x0;
  y = y0;
  z = z0;
  
equation

  der(x) = sigma*(y - x);
  der(y) = x*(rho - z) - y;
  der(z) = x*y - beta*z;
  
  annotation(
    experiment(StopTime = 30, Interval = 0.01, __Dymola_Algorithm = "Dassl"),
    uses(Modelica(version = "4.0.0")));
      
end Lorenz_test;
