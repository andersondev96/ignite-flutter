class GerenciaDeEstado {
  var _state;
  var _onUpdate;

  get state => _state;

  void setState(var state) {
    _state = state;
    if (_onUpdate != null) {
      _onUpdate(state);
    }
  }

  void listen(void Function(dynamic state) onUpdate) {
    _onUpdate = onUpdate;
  }
}
