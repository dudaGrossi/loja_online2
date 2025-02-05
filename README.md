# FINA ESTAMPA - Ruby on Rails e Bootstrap

## Arquitetura MVC
![Imagem do WhatsApp de 2025-02-05 à(s) 17 12 27_de500e45](https://github.com/user-attachments/assets/7d5e2aac-ec27-4bf7-9f16-1b17928d28cb)

A arquitetura MVC (Model-View-Controller) é um padrão usado em projetos Ruby on Rails para organizar o código de forma eficiente. Ela divide a aplicação em três partes principais:

### Model (Modelo):
Responsável por representar os dados da aplicação e as regras de negócio.
Se conecta ao banco de dados, gerenciando a criação, leitura, atualização e exclusão de informações.
Exemplo: Um modelo User armazena e valida informações de usuários.

### View (Visão):
Cuida da interface do usuário, ou seja, o que é exibido na tela.
Exibe os dados que o controlador envia, geralmente usando HTML com código Ruby embutido (ERB).
Exemplo: Uma view index.html.erb mostra a lista dos produtos.

### Controller (Controlador):
Faz a ponte entre o Model e a View.
Recebe as requisições do usuário, processa essas informações (às vezes consultando o Model) e envia a resposta apropriada para a View.
Exemplo: O ProdutosController busca todos os produtos e os envia para a view.
Resumo da comunicação:
Usuário faz uma ação → Controller processa → Model lida com dados → View exibe o resultado.

Essa separação facilita a manutenção do código, tornando o desenvolvimento mais organizado e eficiente.
