Feature: Conexión de dispositivos inteligentes a la app  
  Como usuario,  
  Quiero conectar diferentes dispositivos inteligentes como smartwatches, altavoces, medidores de energía inteligentes, entre otros a la app  
  Para obtener más alternativas de recolección de datos y permitir que la app me brinde una proyección financiera de acuerdo a mis posibles consumos  

Scenario Outline: Conexión de dispositivo exitoso  
  Given que el usuario tiene <estado_dispositivo>  
  When accede a la opción <opcion_conexion> y autoriza el acceso  
  Then el sistema establece la conexión y comienza a <accion_sistema>  

  Examples:  
    | estado_dispositivo                | opcion_conexion       | accion_sistema         |  
    | dispositivos inteligentes compatibles | “Conectar dispositivos” | recopilar datos        |  

Scenario Outline: Conexión de dispositivo fallido  
  Given que el usuario intenta conectar un <tipo_dispositivo>  
  When el sistema <condicion_fallo>  
  Then se debe mostrar un mensaje como: <mensaje_error>  

  Examples:  
    | tipo_dispositivo  | condicion_fallo     | mensaje_error                                             |  
    | dispositivo        | no lo reconoce      | “Este dispositivo no es compatible actualmente”          |
