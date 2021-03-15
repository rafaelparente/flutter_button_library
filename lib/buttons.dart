import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Botao extends StatelessWidget {
  Botao({this.label, this.color, this.borderRadius, this.onTap});

  final String label;
  final Color color;
  final BorderRadiusGeometry borderRadius;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 42),
      child: Material(
        type: MaterialType.button,
        borderRadius: borderRadius,
        color: color == null ? Colors.grey : color,
        child: gestureBuild(context,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: gestureChildBuild(context, label),
          ),
          onTap == null ? (){} : onTap,
        ),
      ),
    );
  }

  Widget gestureBuild(BuildContext context, Widget childWidget, GestureTapCallback onTap) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: childWidget,
      onTap: onTap,
    );
  }

  Widget gestureChildBuild(BuildContext context, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            label == null ? 'Botão Base' : label,
          ),
        ),
      ],
    );
  }
}

class BotaoVerde extends Botao {
  BotaoVerde({String label, GestureTapCallback onTap})
      : super(
    label: label == null ? "Botão Verde" : label,
    color: Colors.green,
    onTap: onTap,
  );
}

class BotaoAnimado extends Botao with Animacao {
  BotaoAnimado({String label, Color color, this.borderRadius, GestureTapCallback onTap})
      : super(
    label: label == null ? "Botão Animado" : label,
    color: color,
    borderRadius: borderRadius,
    onTap: onTap,
  );

  final BorderRadiusGeometry borderRadius;
}

mixin Animacao on Botao {
  BorderRadiusGeometry get borderRadius;

  @override
  Widget gestureBuild(BuildContext context, Widget childWidget, onTap) {
    return InkWell(
      borderRadius: borderRadius,
      child: childWidget,
      onTap: onTap,
    );
  }
}

class BotaoAnimadoAzul extends BotaoAnimado {
  BotaoAnimadoAzul({String label, GestureTapCallback onTap})
      : super(
    label: label == null ? "Botão Animado Azul" : label,
    color: Colors.blue,
    onTap: onTap,
  );
}

class BotaoArredondado extends Botao {
  BotaoArredondado({String label, Color color, GestureTapCallback onTap})
      : super(
    label: label == null? "Botão Arredondado" : label,
    color: color,
    borderRadius: BorderRadius.circular(28.0),
    onTap: onTap,
  );
}

class BotaoArredondadoAmarelo extends BotaoArredondado {
  BotaoArredondadoAmarelo({String label, GestureTapCallback onTap})
      : super(
    label: label == null ? "Botão Arredondado Amarelo" : label,
    color: Colors.yellow,
    onTap: onTap,
  );
}

class BotaoAnimadoArredondado extends BotaoAnimado {
  BotaoAnimadoArredondado({String label, Color color, GestureTapCallback onTap})
      : super(
    label: label == null ? "Botão Animado Arredondado" : label,
    color: color,
    borderRadius: BorderRadius.circular(28.0),
    onTap: onTap,
  );
}

class BotaoAnimadoArredondadoLaranja extends BotaoAnimadoArredondado {
  BotaoAnimadoArredondadoLaranja({String label, GestureTapCallback onTap})
      : super(
    label: label == null ? "Botão Animado Arredondado Laranja" : label,
    color: Colors.orange,
    onTap: onTap,
  );
}

class BotaoComIcone extends Botao with Icone {
  BotaoComIcone({String label, Color color, BorderRadiusGeometry borderRadius, GestureTapCallback onTap})
      : super(
    label: label == null ? "Botão com Ícone" : label,
    color: color,
    borderRadius: borderRadius,
    onTap: onTap,
  );
}

mixin Icone on Botao {
  @override
  Widget gestureChildBuild(BuildContext context, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.favorite,
          color: Colors.blue,
        ),
        SizedBox(width: 8.0),
        Flexible(
          child: Text(
            label == null ? 'Botão Base' : label,
          ),
        ),
      ],
    );
  }
}

class BotaoVermelhoComIcone extends BotaoComIcone {
  BotaoVermelhoComIcone({String label, GestureTapCallback onTap})
      : super(
    label: label == null ? "Botão Vermelho com Ícone" : label,
    color: Colors.red,
    onTap: onTap,
  );
}

class BotaoArredondadoComIcone extends BotaoComIcone {
  BotaoArredondadoComIcone({String label, GestureTapCallback onTap})
      : super(
    label: label == null ? "Botão Arredondado com Ícone" : label,
    borderRadius: BorderRadius.circular(28.0),
    onTap: onTap,
  );
}


class BotaoAnimadoComIcone extends Botao with Animacao, Icone {
  BotaoAnimadoComIcone({String label, Color color, BorderRadiusGeometry borderRadius, GestureTapCallback onTap})
      : super(
    label: label == null ? "Botão Animado com Ícone" : label,
    color: color,
    borderRadius: borderRadius,
    onTap: onTap,
  );
}

class BotaoAnimadoLaranjaArredondadoComIcone extends BotaoAnimadoComIcone {
  BotaoAnimadoLaranjaArredondadoComIcone({String label, GestureTapCallback onTap})
      : super(
    label: label == null ? "Botão Animado Laranja Arredondado com Ícone" : label,
    color: Colors.orange,
    borderRadius: BorderRadius.circular(28.0),
    onTap: onTap,
  );
}
