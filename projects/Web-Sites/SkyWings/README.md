# SkyWings - Plataforma de Vendas de Passagens Aéreas

![SkyWings Website Preview](https://images.unsplash.com/photo-1436491865332-7a61a109cc05?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80)

Uma plataforma web moderna e responsiva para busca e compra de passagens aéreas, desenvolvida com HTML, CSS e JavaScript puro.

## 🚀 Demonstração

[Acesse a demonstração ao vivo](https://seu-usuario.github.io/skywings-platform) *(link exemplo)*

## ✨ Funcionalidades

- **🔍 Busca Avançada de Passagens**
  - Origem e destino com sugestões
  - Datas flexíveis (ida e volta)
  - Seleção de passageiros e classes
  - Filtros por preço e companhias aéreas

- **📱 Design Totalmente Responsivo**
  - Adaptado para desktop, tablet e mobile
  - Menu hamburguer para dispositivos móveis
  - Layout flexível em todas as telas

- **🎯 Serviços Especializados**
  - Comparação de preços em tempo real
  - Suporte ao cliente 24/7
  - Garantia de compra segura
  - Roteiros de viagem personalizados

- **📲 App Mobile**
  - Disponível para iOS e Android
  - Check-in online
  - Alertas de preços
  - Acesso offline aos bilhetes

## 🛠️ Tecnologias Utilizadas

- **HTML5** - Estrutura semântica do site
- **CSS3** - Estilização moderna com variáveis CSS, Flexbox e Grid
- **JavaScript** - Interatividade e funcionalidades dinâmicas
- **Font Awesome** - Ícones profissionais
- **Google Fonts** - Tipografia moderna
- **Unsplash** - Imagens de alta qualidade

## 📁 Estrutura do Projeto

```
skywings-platform/
│
├── index.html              # Página principal
├── README.md               # Este arquivo
│
├── assets/                 # Diretório de recursos
│   ├── css/
│   │   └── style.css      # Estilos principais (embed no HTML)
│   ├── js/
│   │   └── main.js        # JavaScript (embed no HTML)
│   └── images/             # Imagens locais (se necessário)
│
└── (em implementação)      # Futuras páginas
    ├── resultados.html     # Página de resultados de busca
    ├── checkout.html       # Página de finalização de compra
    └── minha-conta.html    # Área do cliente
```

## 🎨 Design System

### Cores Principais
```css
--primary: #1a73e8;    /* Azul principal */
--secondary: #0d47a1;  /* Azul escuro */
--accent: #ff6d00;     /* Laranja de destaque */
--light: #f8f9fa;      /* Fundo claro */
--dark: #202124;       /* Texto escuro */
```

### Tipografia
- **Títulos:** Segoe UI, sem serifa
- **Corpo:** Sistema de fontes do sistema
- **Hierarquia:** Estabelecida com tamanhos de 1rem a 3rem

## 🚀 Como Usar

### 1. Clone o repositório
```bash
git clone https://github.com/seu-usuario/skywings-platform.git
cd skywings-platform
```

### 2. Abra no navegador
Simplesmente abra o arquivo `index.html` em qualquer navegador moderno.

### 3. Desenvolvimento
Para desenvolvimento, você pode usar qualquer servidor local. Sugestão com Python:

```bash
# Python 3
python -m http.server 8000

# Ou com npx
npx serve .
```

Acesse: `http://localhost:8000`

## 📱 Responsividade

O site foi desenvolvido com abordagem **mobile-first** e se adapta a:

| Dispositivo | Breakpoint | Características |
|-------------|------------|-----------------|
| Mobile | < 576px | Menu hamburguer, single column |
| Tablet | 576px - 992px | Layout adaptativo, 2 colunas |
| Desktop | > 992px | Layout completo, 4 colunas |

## 🔧 Funcionalidades JavaScript

### 1. Navegação Mobile
```javascript
// Toggle do menu hamburguer
mobileMenuBtn.addEventListener('click', () => {
    navLinks.classList.toggle('active');
});
```

### 2. Validação do Formulário
```javascript
// Validação básica dos campos obrigatórios
if (!origin || !destination) {
    alert('Por favor, preencha a origem e o destino');
    return;
}
```

### 3. Configuração de Datas
```javascript
// Configura datas mínimas automaticamente
document.getElementById('departure').min = today;
document.getElementById('return').min = tomorrowStr;
```

## 🎯 Próximas Implementações

### Fase 2 (Em desenvolvimento)
- [ ] Página de resultados de busca
- [ ] Sistema de filtros avançados
- [ ] Página de detalhes do voo
- [ ] Processo de checkout

### Fase 3 (Planejado)
- [ ] Integração com API de voos
- [ ] Sistema de login/cadastro
- [ ] Histórico de buscas
- [ ] Favoritos e alertas de preço

### Fase 4 (Futuro)
- [ ] Backend Node.js/Express
- [ ] Banco de dados PostgreSQL
- [ ] Sistema de pagamento integrado
- [ ] App React Native

## 📄 Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

## 🤝 Contribuindo

Contribuições são bem-vindas! Siga estes passos:

1. Faça um Fork do projeto
2. Crie uma Branch para sua Feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a Branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 👥 Autores

- **Márcio F. Reis** - *Desenvolvimento Inicial* - [SeuGitHub](https://github.com/seu-usuario)

## 🙏 Agradecimentos

- [Unsplash](https://unsplash.com) pelas imagens incríveis
- [Font Awesome](https://fontawesome.com) pelos ícones
- [Google Fonts](https://fonts.google.com) pela tipografia

## 📞 Contato

Márcio F. Reis - [LinkedIn](https://www.linkedin.com/in/marcio-marine-corps-soldier/)

Link do Projeto: [GitHub](https://github.com/marcio-marine-corps-soldier/technology/new/main/projects/Web-Sites/SkyWings/)

---

⭐️ Se este projeto foi útil para você, dê uma estrela no repositório!
