enum EndpointType {
  login,
  unassociatedResource,
  byUser,
  byRecord,
}

void evaluateStatusCode(int code, EndpointType type, String resource) {
  String messageStart;
  String messageComplement;

  switch (code) {
    case 200:
    case 201:
      return;
    case 400:
      messageStart = 'Datos incorrectos para solicitud de $resource';
      break;
    case 401:
      messageStart = 'Usuario no autorizado para solicitud de $resource';
      break;
    case 404:
      messageStart = 'No se encontró $resource';
      break;
    case 500:
      messageStart = 'Error del servidor al solicitar $resource';
      break;
    default:
      messageStart = 'Error al solicitar $resource';
  }

  switch (type) {
    case EndpointType.byUser:
      messageComplement = ' del usuario.';
      break;
    case EndpointType.byRecord:
      messageComplement = ' del expediente.';
      break;
    case EndpointType.login:
      messageComplement = ', por favor, verifique las credenciales proporcionadas.';
    default:
      messageComplement = '.';
  }

  throw Exception('$messageStart$messageComplement');
}