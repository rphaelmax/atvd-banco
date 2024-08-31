programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real saldo = 0.0
    cadeia senha = "123"
    cadeia pswd
    real saque, deposito
    cadeia controle
    inteiro menu =1
    cadeia extrato = ""
    real investimento, rendimento
    inteiro meses

	faca{
		escreva("Digite sua senha: ")
		leia(pswd)
	}enquanto(senha != pswd)
	
	se(pswd == senha){
		
    	enquanto(menu != 0){
      escreva("|----------MENU----------|\n")
      escreva("| 1-SALDO  R$", mat.arredondar(saldo,2), "           |\n")
      escreva("| 2-SAQUE                |\n")
      escreva("| 3-DEPOSITO             |\n")
      escreva("| 4-EXTRATO              |\n")
      escreva("| 5-INVESTIMENTO         |\n")
      escreva("| 0-SAIR                 |\n")
      escreva("|------------------------|\n")
      escreva("| ESCOLHA -> ")
      leia(menu)
      limpa()
      escolha(menu){
        caso 1:
        escreva("Saldo = ", saldo, "\n")
        pare
        caso 2:
        escreva("Digite sua senha: ")
        leia(pswd)
        se(pswd == senha){
	        escreva("Digite o valor para sacar: ")
	        leia(saque)
	        enquanto(saque < 0){
	          escreva("Valor invalido digite novamente: ")
	          leia(saque)
	          
	        }
	        se(saque > saldo){
	          escreva("Não autorizado!\n")
	          escreva("Aperte ENTER para continuar")
	          leia(controle)
	          limpa()
	        }
	        senao{
	          saldo = saldo - saque
	          extrato = extrato + "SAQUE ------------ R$" + saque + "\n"
	          escreva("Saque realizado com sucesso!\n")
	          escreva("Aperte ENTER para continuar")
	          leia(controle)
	          limpa()
	        }
        }
        senao{
        	escreva("Senha invalida!\n")
        }
        pare
        caso 3:
        escreva("Digite sua senha: ")
        leia(pswd)
        se(pswd == senha){
        		escreva("Digite o valor para depositar: ")
	        leia(deposito)
	        enquanto(deposito<0){
	          escreva("Valor invalido digite novamente: ")
	          leia(deposito)
	        }
	        saldo = saldo + deposito
	        extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
	        escreva("Deposito realizado com sucesso!\n")
	        escreva("Aperte ENTER para continuar")
	          leia(controle)
	          limpa()
        }
       senao{
       	escreva("Senha invalida!\n")
       }
        pare
        caso 4:
        escreva("Digite sua senha: ")
        leia(pswd)
        se(pswd == senha){
        	    escreva(extrato)
	         escreva("Aperte ENTER para continuar")
	          leia(controle)
	          limpa()
        }
        senao{
        	escreva("Senha invalida!\n")
        }

        pare
        caso 5:
        //INVESTIMENTO
        escreva("Digite o valor que deseja investir: ")
        leia(investimento)
        se(investimento > saldo){
          escreva("Saldo insuficiente!\n")
        }
        senao{
          escreva("Digite a quantidade de meses que seja investir: ")
          leia(meses)
          saldo = saldo - investimento
          para(inteiro contador = 0; contador<meses ; contador++){
            rendimento = investimento * 1.02
            investimento = rendimento
          }
          saldo = saldo + investimento
          escreva(meses," meses se passaram...\n")
          escreva("O rendimento final foi de: R$", investimento, ", PARABENS!\n")
        }

        pare
      }
    }
	}
  }
}