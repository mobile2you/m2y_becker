# M2yBecker

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/m2y_becker`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'm2y_becker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install m2y_becker

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/m2y_becker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the M2yBecker project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/m2y_becker/blob/master/CODE_OF_CONDUCT.md).


## Doc

**CdtCard.findCard(id)**

```json

{
    "id": 20,
    "idStatusCartao": null,
    "idEstagioCartao": null,
    "idConta": 20,
    "idCliente": 20,
    "idProduto": null,
    "tipoPortador": "T",
    "numeroCartao": "6516XXXXXXXX0041",
    "nomeImpresso": "JACO F SILVA",
    "dataGeracao": "2019-12-23T17:23:22.000Z",
    "dataStatusCartao": null,
    "dataEstagioCartao": null,
    "dataValidade": "2024-12-23T00:00:00.000Z",
    "dataImpressao": "2019-12-23T17:23:22.000Z",
    "arquivoImpressao": null,
    "flagImpressaoOrigemComercial": null,
    "flagProvisorio": 1,
    "codigoDesbloqueio": null,
    "tipoCartao": "P"
}
```

**CdtEvent.findEvents(id, yyyy-mm-dd, yyyy-mm-dd) :**

```json

    "eventos": [
        {
            "data": "2020-01-09T18:40:06.000-0200",
            "descricao": "CRIAÇÃO DE CARTÃO",
            "tipo": "CC",
            "valor": null,
            "credito": false,
            "nomePortador": "FRANCESCO DUGATTO",
            "loja": null,
            "numeroCartao": "650596XXXXXX3145",
            "novoVencimento": 0,
            "formaPagamento": null,
            "segmentoLoja": null,
            "nsu": null
        }
    ]
```

**CdtUser.findUser(id) :**

```json

{
    "id": 200,
    "cpf": "XXX",
    "cartao": null,
    "nome": "XXX",
    "rg": "XXX",
    "clienteDataNascimento": "1984-06-10",
    "rendas": [
        {
            "id": 199,
            "valor": 1845.0,
            "comprovada": "N",
            "idPessoa": 200,
            "principal": null,
            "origem": null
        }
    ],
    "statusCliente": "B",
    "statusAnalise": "A",
    "contratoImpresso": "S",
    "estanoCobranca": "N",
    "ultimoMotivoBloqueioCliente": "Atraso no Pagamento",
    "extratoClienteResponse": {
        "limite": 1900.00,
        "saldoDisponivel": 1766.26,
        "saldoReservado": 0.0,
        "saldoParceladoDisp": 0,
        "limiteParcelado": 0,
        "devedorTotal": 133.74,
        "utilizaLimiteExtra": false,
        "valorLimiteExtra": null,
        "limiteExtraTotal": null,
        "saldoDisponivelExtra": null,
        "valorFaturaFechada": 133.74,
        "clienteEmBloqueioJuridico": false
    },
    "pontuacaoFidelidadeResponse": {
        "idCliente": null,
        "valorPontuacao": null,
        "dataReferencia": null,
        "descricaoPrograma": null
    },
    "boletos": null,
    "faturaFechada": {
        "id": 446326,
        "dataVencimento": "2021-10-15",
        "valorTotal": 133.74,
        "somaPagamentos": null,
        "valorMinimoRenegociacao": 0.0,
        "valorMinimoRotativo": 62.5,
        "valorPagamentoMinimo": 80.24,
        "valorPrestacoesParceladas": 0.0,
        "possuiPagamentoMinimo": false,
        "hashFatura": "ea0d446d9c83eb143acb5d6173b65c5c4e749a16389d25c0ed12dc796b2f8c9a"
    },
    "faturaFutura": {
        "dataVencimento": "2021-11-15",
        "valorTotal": 133.74
    },
    "melhorDiaCompra": 6,
    "ciclo": {
        "id": 20,
        "diaCorte": 5,
        "diaVencimento": 15,
        "descricao": "VENCIMENTO 15",
        "ativo": "S",
        "corteUltimoDiaMes": "N",
        "diasCarencia": 0,
        "descricaoContaBancariaCicloAtual": "",
        "descricaoContaBancariaProximoCiclo": ""
    },
    "dependentes": [],
    "produto": {
        "id": 15,
        "descricao": "CARTAO XX ELO MAIS",
        "isProdutoDigital": "N",
        "isProdutoBandeirado": "S"
    },
    "taxas": [
        {
            "descrição": "TARIFA SEGUNDA VIA DE CARTÃO",
            "valorContratado": 10,
            "desconto": 0,
            "dataFimDesconto": null,
            "dataFimDoCarencia": "2021-03-29",
            "numeroCobrancas": 0,
            "natureza": "T"
        }
    ],
    "estaEmPerda": false,
    "idCartao": null,
    "estaEmAtraso": true,
    "dataEmissaoRG": null,
    "orgaoEmissorRG": null,
    "totalTentativasValidacaoCartao": null,
    "email": "XXXX",
    "numeroCartaoTruncado": "650596XXXXXX9578",
    "valorLancamentosFuturos": 0,
    "dataCadastro": "2020-07-07",
    "permiteAcessoApp": true,
    "statusFaturaDigital": "A",
    "statusCartao": null,
    "dataFechamentoProxFatura": "2021-11-05",
    "numeroCartaoCriptografado": null,
    "inibirEnvioFaturaGrafica": false,
    "enderecoResidencial": {
        "logradouro": "XXXX 1",
        "complemento": null,
        "numero": "1265",
        "bairro": "VILA INDUSTRIAL",
        "cep": "97900000",
        "uf": "RS",
        "cidade": "XXXX"
    },
    "enderecoComercial": null,
    "enderecoAlternativo": null,
    "transicaoBandeira": "I",
    "senhaExpirada": true
}
```
**CdtBill.findCurrentBill(30):**
```json

{
    "lancamentos": [
        {
            "dataLancamento": "2021-10-09T00:00:00.000-0300",
            "descricaoLancamento": "MLP CORINTHIANS 4 / 4 - Venda",
            "valor": 47.25,
            "tipo": "ELO",
            "dataTransacao": "2021-10-09T00:00:00.000-0300",
            "tipoProprietario": null,
            "moedaOrigem": null,
            "valorMoedaOrigem": 188.99,
            "valorDolar": null,
            "cotacaoDolar": null,
            "codigoISO": 8999,
            "numeroCartaoTruncado": "655005XXXXXX0179",
            "nsu": "108512475110"
        }
    ],
    "valorTotalFaturaAtual": 789.85
}
```

**CdtBill.findCloseBill(30):**
```json
{
    "lancamentos": [
        {
            "dataLancamento": "2021-09-10T00:00:00.000-0300",
            "descricaoLancamento": "TOTAL DA FATURA ANTERIOR",
            "valor": 554.11,
            "tipo": "FATURA_ANTERIOR",
            "dataTransacao": "2021-08-31T00:00:00.000-0300",
            "tipoProprietario": "TITULAR",
            "moedaOrigem": null,
            "valorMoedaOrigem": null,
            "valorDolar": null,
            "cotacaoDolar": null,
            "codigoISO": null,
            "numeroCartaoTruncado": null,
            "nsu": null
        },
    ],
    "dataVencimento": "2021-10-10T00:00:00.000-0300",
    "valorTotal": 742.6,
    "valorMinimo": 623.26,
    "linhaDigitavel": "",
    "codigoDeBarras": "",
    "possuiPagamentoMinimo": false,
    "hashFatura": "ec7a9beea6ebbf2b79c96ecd374edb9169254c9f6d579b697dc144a84fce24d7"
}
```
**CdtBill.findPeriodBill(30):**
```json

{
    "faturasResponse": [
        {
            "idFatura": "42",
            "dataVencimento": "2019-12-10T03:00:00.000+0000",
            "valorTotal": 0,
            "valorMinimo": 0,
            "valorPagamentosEfetuados": 0,
            "devedor": 0,
            "status": "PASSADA",
            "faturaDisponivel": true
        },
    ],
    "limitePrincipal": 2000.00,
    "limiteParcelado": 0,
    "saldoDisponivel": 1210.15,
    "saldoReservado": 0.0,
    "saldoDisponivelParcelado": 0,
    "devedorTotal": 789.85,
    "devedorParcelado": 0
}
```

```json

```
**CdtBill.findBillPDF(100,347), CdtBill.findDetailBill(100,347):**
```json

{
    "idFatura": "347",
    "nomeCartao": "ALESSANDRO FERST WALTER",
    "numeroCartaoTruncado": "6505XXXXXXXX4184",
    "diaDeCorte": 0,
    "status": "INATIVA",
    "dataVencimento": "2020-06-10T03:00:00.000+0000",
    "lancamentos": [],
    "valorTotalFaturaAnterior": 0,
    "valorPagoFaturaAnterior": 0,
    "valorLancamentosFaturaAtual": 0,
    "valorTotalFaturaAtual": 0,
    "valorPagamentoMinimoFaturaAtual": 0,
    "limiteRotativo": 3600.00,
    "limiteParcelado": 0,
    "devedorRotativo": 556.7,
    "devedorParcelado": 0,
    "saldoDisponivelRotativo": 3043.30,
    "saldoReservado": 0.0,
    "saldoDisponivelParcelado": 0,
    "totalPrincipalFatura": 0,
    "totalTaxasFatura": 0,
    "totalEncargosFatura": 0,
    "melhorDiaCompra": 1,
    "tarifaJurosRotativo": 9,
    "itemArquivoCobranca": null,
    "encargosMaximos": 0

    
}
```

**CdtCycle.findCycle():**
```json

[
    {
        "id": 15,
        "diaCorte": 21,
        "diaVencimento": 1,
        "descricao": "VENCIMENTO 01",
        "ativo": "S",
        "corteUltimoDiaMes": "N",
        "diasCarencia": 0,
        "descricaoContaBancariaCicloAtual": "",
        "descricaoContaBancariaProximoCiclo": ""
    },
    {
        "id": 20,
        "diaCorte": 5,
        "diaVencimento": 15,
        "descricao": "VENCIMENTO 15",
        "ativo": "S",
        "corteUltimoDiaMes": "N",
        "diasCarencia": 0,
        "descricaoContaBancariaCicloAtual": "",
        "descricaoContaBancariaProximoCiclo": ""
    },
]

```

**CdtUser.findCpf(92539955053):**
```json

{
    "clientes": [
        {
            "idCliente": 100,
            "numeroCartao": "650596XXXXXX8925",
            "descricaoProduto": "CARTAO BECKER ELO MAIS",
            "codigoProduto": 15,
            "permiteRegistrarBoletoOnline": true,
            "campoAuxiliar1": null,
            "dadosBancarios": null,
            "rendas": [
                {
                    "id": 99,
                    "valor": 4500.0,
                    "comprovada": "N",
                    "idPessoa": 100,
                    "principal": null,
                    "origem": null
                }
            ],
            "estadoCivil": "Solteiro",
            "conjuge": null,
            "transicaoBandeira": "I"
        }
    ]
}