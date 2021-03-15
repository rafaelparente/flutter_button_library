import 'package:flutter/material.dart';
import 'package:flutter_button_library/buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biblioteca de Botões',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String textContent = 'Nenhum botão foi clicado.';

  void _updateTextContent(String content) {
    setState(() {
      textContent = content;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                textContent,
              ),
              SizedBox(height: 8.0),
              Wrap(
                runSpacing: 8.0,
                spacing: 8.0,
                alignment: WrapAlignment.spaceAround,
                children: [
                  Botao(onTap: () => _updateTextContent("Botão Base pressionado")),
                  BotaoVerde(onTap: () => _updateTextContent("Botão Verde pressionado")),
                  BotaoAnimado(onTap: () => _updateTextContent("Botão Animado pressionado")),
                  BotaoAnimadoAzul(onTap: () => _updateTextContent("Botão Animado Azul pressionado")),
                  BotaoArredondado(onTap: () => _updateTextContent("Botão Arredondado pressionado")),
                  BotaoArredondadoAmarelo(onTap: () => _updateTextContent("Botão Arredondado Amarelo pressionado")),
                  BotaoAnimadoArredondado(onTap: () => _updateTextContent("Botão Animado Arredondado pressionado")),
                  BotaoComIcone(onTap: () => _updateTextContent("Botão com Ícone pressionado")),
                  BotaoVermelhoComIcone(onTap: () => _updateTextContent("Botão Vermelho com Ícone pressionado")),
                  BotaoArredondadoComIcone(onTap: () => _updateTextContent("Botão Arredondado com Ícone pressionado")),
                  BotaoAnimadoComIcone(onTap: () => _updateTextContent("Botão Animado com Ícone")),
                  BotaoAnimadoLaranjaArredondadoComIcone(onTap: () => _updateTextContent("Botão Animado Laranja Arredondado com Ícone")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
