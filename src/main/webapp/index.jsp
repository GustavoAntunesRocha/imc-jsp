<!DOCTYPE html>
<html lang="pt-br">
    <link rel="stylesheet" href="css/bootstrap.css">
    <head>
        <meta charset="UTF-8"/>
        <title>Cálculo do IMC</title>
        <meta name="viewport" content="width=device-width">
    </head>
    <body>
        <div class="jumbotron">
            <div class="container">
                <h1>Cálculo do IMC!</h1>
                <p>Insira as informações nos campos</p>
            </div>
        </div>
        <div class="container">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Seu IMC</h3>
            </div><!-- fim .panel-heading -->
            <div class="panel-body">
            <form>
                <dl>
                <dt>Peso:</dt>
                <input type="number" required="required" name="peso"/>
                
                <dt>Altura:</dt>
                <input type="number" required="required" name="altura"/>
            
                <dt>Sexo:</dt>
                <p>
                    <input type="radio" id="masculinoId" name="sexo"/>
                    <label for="masculinoId">Masculino</label>
                </p>
                <p>
                    <input type="radio" id="femininoId" name="sexo"/>
                    <label for="femininoId">Feminino</label>
                </p>

                <p>
                    <button>Calcular</button>
                </p>
            </form>
            
                </dl>
            </div><!-- fim .panel-body -->
        </div><!-- fim .panel -->
        </div>
        <%
        //Inicio do Scriptlet.
        String alturaString = request.getParameter("altura");
        //int altura = Integer.parseInt(alturaString);
        String pesoString = request.getParameter("peso");
        //int peso = Integer.parseInt(pesoString);
        //float imc = peso / (altura*altura);
        int imc = 20;
        %>
        <div class="container">
        <h3>O seu imc é </h3>
        <%
        if(imc < 16){
            %>
            <h3>Magreza grave!</h3>
            <%
        }
        else if(imc < 17){
            %>
            <h3>Magreza moderada!</h3>
            <%
        }
        else if(imc < 18){
            %>
            <h3>Magreza leve!</h3>
            <%
        }
        else if(imc < 25){
            %>
            <h3>Você está saudável</h3>
            <%
        }
        else if(imc < 30){
            %>
            <h3>Sobrepeso!</h3>
            <%
        }
        else if(imc < 35){
            %>
            <h3>Obesidade Grau 1!</h3>
            <%
        }
        else if(imc < 40){
            %>
            <h3>Obesidade Grau 2 (severa)!</h3>
            <%
        }
        else{
            %>
            <h3>Obesidade Grau Obesidade Grau 3 (mórbida)!</h3>
            <%
        }
        %>
        </div>
    </body>
</html>