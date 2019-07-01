$port = new-Object System.IO.Ports.SerialPort COM6,115200,None,8,one
$port.Open()
$port.WriteLine( "at+csq" + "`r" )
start-sleep -m 50
$port.ReadExisting()
$port.Close()