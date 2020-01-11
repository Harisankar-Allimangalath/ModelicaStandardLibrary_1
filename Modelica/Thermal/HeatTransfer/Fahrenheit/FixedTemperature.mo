within Modelica.Thermal.HeatTransfer.Fahrenheit;
model FixedTemperature
  "Fixed temperature boundary condition in degFahrenheit"
  extends HeatTransfer.Icons.FixedTemperature;
  parameter Modelica.SIunits.Conversions.NonSIunits.Temperature_degF T
    "Fixed Temperature at the port";
  Interfaces.HeatPort_b port annotation (Placement(transformation(extent={{
            90,-10},{110,10}})));
equation
  port.T = Modelica.SIunits.Conversions.from_degF(T);
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
            100,100}}), graphics={
        Text(
          extent={{-150,150},{150,110}},
          textString="%name",
          textColor={0,0,255}),
        Text(
          extent={{-150,-110},{150,-140}},
          textString="T=%T"),
        Text(
          extent={{-100,-40},{-40,-100}},
          textColor={64,64,64},
          textString="degF")}),
    Documentation(info="<html>
<p>
This model defines a fixed temperature T at its port in [degF],
i.e., it defines a fixed temperature as a boundary condition.
</p>
</html>"),
       Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
            {100,100}})));
end FixedTemperature;
