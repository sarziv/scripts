Numpad1::
loop
{
   if getkeystate("Numpad1", "p") ;if a button is Physically held down by the user.
    {
      MouseClick left
	  sleep 10
		
    }
  else
    {
      break
    }
}
return

Numpad9::Exitapp