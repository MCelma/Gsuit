esc::exitapp   ; paaaaanic


;Pagina de gsuit admin

^q::
	/*;Abrir gadmin con navegador directamente
	Run , C:\Program Files\Google\Chrome\Application\chrome.exe -- https://admin.google.com/ac/home?hl=en_GB
	
	Sleep 5000
	Loop, 19
		{
			send {tab}
			sleep 500
		}															
	
	send {enter}
	sleep 1000
*/	
	;abrir txt y coger valores de lineas
	;Run, C:\Users\marc.celma\Desktop\txt\Gmail.txt
	sleep 1000
	Loop{	
		WinActivate, ahk_exe Notepad.exe  ;zoketeeeee activar finestra
		Sleep 1000
		send {home} ;va al inicio send ^a ....modo cutre
		send +{end} ;seleciona texto
		sleep 1000
		send ^c
		send {down}
		linea := clipboard
		;Trabajar input o editar linea...strsplit crea un array de valors separats
		palabra := strsplit(linea, A_Tab)
		nombre := palabra[1]
		apellido := palabra[2]
		email := palabra[3]
		palabra2 := strsplit(email,"@")
		emailok := palabra2[1]
		
		;LANZAMOS Chrome
		WinActivate, ahk_exe chrome.exe
		sleep 1000
		send, %nombre%
		sleep 1000
		send, {tab}
		sleep 1000
		send, %apellido%
		sleep 1000
		send, {tab}
		sleep 1000
		send, %emailok%
		sleep 1000
	;ventana creación usuario, nombre apellido, email
		Sleep 5000
			loop, 6
				{
				send {tab}
				sleep 1000
				}
			send {enter}
		Sleep 10000
	;segunda ventana ventana
		loop, 9
				{
				send {tab}
				sleep 1000
				}
		Send {enter}
		sleep 5000
	}Until (strlen(linea)=0)
		
return

