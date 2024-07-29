// Definindo a superclasse Pessoa.
class Pessoa {
  String nome;
  int idade;

  Pessoa(
    this.nome,
    this.idade,
  );

  void apresentar() {
    print("Meu nome é $nome e tenho $idade anos.");
  }
}

// Subclasse Aluno, quando herança é apropriada.
class Aluno extends Pessoa {
  String matricula;

  Aluno(
    String nome,
    int idade,
    this.matricula,
  ) : super(nome, idade);

  @override
  void apresentar() {
    super.apresentar();
    print("Minha matrícula é $matricula.");
  }
}

// Uso de composição em vez de herança.
class Endereco {
  String rua;
  String cidade;

  Endereco(
    this.rua,
    this.cidade,
  );
}

class Empresa {
  String nome;
  Endereco endereco;

  Empresa(
    this.nome,
    this.endereco,
  );

  void mostrarInformacoes() {
    print("Empresa: $nome");
    print("Endereço: ${endereco.rua}, ${endereco.cidade}");
  }
}

void main() {
  Aluno aluno = Aluno("João", 20, "753221589");
  aluno.apresentar();

  Endereco endereco = Endereco("Rua A", "Cidade B");
  Empresa empresa = Empresa("Devsgeeknerd", endereco);
  empresa.mostrarInformacoes();
}
