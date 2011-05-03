#!/usr/bin/pike

void main()
{
write("Hello\n");
object a = Public.System.lmsensors("/etc/sensors3.conf");

write("%O\n",a->list_sensors());


foreach(a->list_sensors(),string sensorname)
{
   write("%O\n",a->get_sensor_data(sensorname));
}

//object a = Public.System.LMSensors("/etc/sensors3.conf");
}
