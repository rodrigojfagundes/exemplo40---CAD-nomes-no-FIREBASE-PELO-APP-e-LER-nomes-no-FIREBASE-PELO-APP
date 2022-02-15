import 'package:cloud_firestore/cloud_firestore.dart';

//criando a classe FB (classe q ira nos conectar ao FIREBASE)
class fb {
//dentro da classe FB vamos criar uma variavel chamada NOME... do tipo STRING
  final String nome;

//a CLASSE FB vai receber a VARIAVEL NOME
  fb(this.nome);

//criando uma COLLECTION REFERENCE chamada de CADASTRO... pois assim podemos
//fazer a nossa conexao ao FB chamando apenas por CADASTRO...
//e nao digitar todas vez FirebaseFirestore.instance.collection('cadastro');
  CollectionReference cadastro =
      FirebaseFirestore.instance.collection('cadastro');
//FUNCAO do tipo FUTURE (ou seja q vai demorar um pouquinho para retornar)
//o nome da funcao é ADD CADASTRO ela vai ADD um NOME ao FB
  Future<void> addCadastro(String nome) async {
    //aqui estamos chamando a funcao AWAIT ou seja estamos dizendo q o RETURN
    //pode demorar um pouco, pois para fazer o RETURN do CADASTRO vamos ter q
    //ir ate o FIREBASE... pois o CADASTRO é um COLLECTION REFERENCE q
    //CRIAMOS ALI EM CIMA
    return await cadastro
        .add({'nome': nome})
        .then((value) => print("cadastro ok"))
        .catchError((error) => print("falha cadastro $error"));
  }
}
