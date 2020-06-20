########################################################################
# Agregar a /etc/profile.d un .sh con "export NOTIFICACION_BATERIA     #
# Ejecutar este script con cron job utilizando source /path/bateria.sh #
########################################################################
bat=$(upower -i $(upower -e | grep '/battery') | grep "percentage:" | cut -d ':' -f2 | cut -d '%' -f1)

if [ $bat -lt 10 ] && [ $NOTIFICACION_BATERIA == 0 ] ; then
	 notify-send -u critical --icon=gtk-warning Bateria "Queda 10% de Bateria"
	 NOTIFICACION_BATERIA=1
elif [ $bat -lt 20 ] && [ $NOTIFICACION_BATERIA == 0 ]; then
	 notify-send -u normal --icon=gtk-info Bateria "Queda 20% de Bateria"
	 NOTIFICACION_BATERIA=1
else
	if [ $bat -gt 20 ]; then
		NOTIFICACION_BATERIA=0
	fi
fi
