Numpad1::
loop
{
   if getkeystate("Numpad1", "p") ;if a button is Physically held down by the user.
    {
      send, {click DOWN}
      sleep, 1400 
      send, {click UP}
	  sleep,  250
    }
  else
    {
      break
    }
}
return

Numpad9::Exitapp