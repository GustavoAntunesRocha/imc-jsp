<!DOCTYPE html>
<html lang="en">
    <link rel="stylesheet" href="css/bootstrap.css">
    <head>
        <meta charset="UTF-8">
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
        float altura = Float.parseFloat(alturaString);
        String pesoString = request.getParameter("peso");
        float peso = Float.parseFloat(pesoString);
        float temp = peso / (altura*altura);
        float imc = temp.toFixed(2);
        if(imc < 16){
            alert("Seu imc é: " + imc + "\nMagreza grave!")
        }
        else if(imc < 17){
            alert("Seu imc é: " + imc + "\nMagreza moderada!")
        }
        else if(imc < 18.5){
            alert("Seu imc é: " + imc + "\nMagreza leve!")
        }
        else if(imc < 25){
            alert("Seu imc é: " + imc + "\nVocê está saudável!")
        }
        else if(imc < 30){
            alert("Seu imc é: " + imc + "\nSobrepeso!")
        }
        else if(imc < 35){
            alert("Seu imc é: " + imc + "\nObesidade Grau 1!")
        }
        else if(imc < 40){
            alert("Seu imc é: " + imc + "\nObesidade Grau 2 (severa)!")
        }
        else{
            alert("Seu imc é: " + imc + "\nObesidade Grau 3 (mórbida)!")
        }
        %>
    </body>
</html>