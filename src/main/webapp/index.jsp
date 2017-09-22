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
                <dl>
                <dt>Peso:</dt>
                <input type="number" id="pesoId" placeholder="Peso" required="required" name="peso"/>
                
                <dt>Altura:</dt>
                <input type="number" id="alturaId" placeholder="Altura" required="required" name="altura"/>

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
                    <input type="submit" onclick="calcImc();" value="Calcular" />
                </p>
            
                </dl>
            </div><!-- fim .panel-body -->
        </div><!-- fim .panel -->
        </div>
    </body>
</html>