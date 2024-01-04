<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Candidato.aspx.cs" Inherits="site.Candidato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Concurso</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/datetimepicker.css" rel="stylesheet">
    <link href="css/form.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <img style="border-bottom:5px solid #1F4769" width="100%" height="auto" src="imgs/concursoPM.jpg" alt="">
            </div>
        </div>
        
            <div class="row">
                <div class="col-md-12">
                    <h2>FORMULÁRIO DE CANDIDATURA</h2>
                    <br/>
                    <div class="bg-warning" style="padding:10px;">
                        <p>Após preenchimento deste formulário será necessário imprimir e/ou exportar para PDF para posterior impressão.
                            <br/>Este formulário impresso deve ser entregue para formalizar a candidatura.</p>
                    </div>
                    <br/>
                    <p class="text-warning">* Campos de preenchimento obrigatório
                        <br/>** Pelo menos um destes campos tem de ser preenchido</p>
                </div>
                <div>
                    <div class="col-md-6">
                        <h3>DADOS PESSOAIS</h3>
                        <div class="form-group">
                            <label class="req" for="nome">Nome*:</label>
                            <input type="text" class="form-control" id="nome" placeholder="Nome" runat="server">
                        </div>
                        <div class="row">
                            <div class="col-md-6">

                                <label class="req" for="datanascimento">Data de Nascimento*:</label>
                                <div class="input-group date" id="datanascimento">
                                    <input type="text" class="form-control" id="datanascimento" placeholder="Data de Nascimento">
                                    <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Sexo:</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="optradio">Masculino</label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="optradio">Feminino</label>
                                </div>
                            </div>
                        </div>



                        <h3>DADOS DO BILHETE DE IDENTIDADE</h3>

                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group">
                                    <label class="req" for="numero">Número*:</label>
                                    <asp:TextBox ID="tb_numero" Class="form-control" runat="server" 
                                        placeholder="Número2"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <label class="req" for="emissao">Emissão*:</label>
                                <div class="input-group date" id="emissao">
                                    <input type="text" class="form-control" id="emissao" placeholder="Emissão">
                                    <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="req" for="arquivo">Arquivo*:</label>
                                    <input type="text" class="form-control" id="arquivo" placeholder="Arquivo">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group">
                                    <label class="req" for="filho">Filho de*:</label>
                                    <input type="text" class="form-control" id="filho" placeholder="Filho de">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group">
                                    <label class="req" for="filho2">e de*:</label>
                                    <input type="text" class="form-control" id="filho2" placeholder="e de">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group">
                                    <label class="req" for="naturalidade">Naturalidade*:</label>
                                    <input type="text" class="form-control" id="naturalidade" placeholder="Naturalidade">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="estadocicil">Estado Civil:</label>
                                    <select class="form-control">
                                        <option>Solteiro</option>
                                        <option>Casado</option>
                                        <option>União de Facto</option>
                                        <option>Divorciado</option>
                                        <option>Viúvo</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="altura">Altura:</label>
                                    <select class="form-control">
                                        <option>160cm</option>
                                        <option>161cm</option>
                                        <option>162cm</option>
                                        <option>163cm</option>
                                        <option>164cm</option>
                                        <option>165cm</option>
                                        <option>166cm</option>
                                        <option>167cm</option>
                                        <option>168cm</option>
                                        <option>169cm</option>
                                        <option>170cm</option>
                                        <option>171cm</option>
                                        <option>172cm</option>
                                        <option>173cm</option>
                                        <option>174cm</option>
                                        <option>175cm</option>
                                        <option>176cm</option>
                                        <option>177cm</option>
                                        <option>178cm</option>
                                        <option>179cm</option>
                                        <option>180cm</option>
                                        <option>181cm</option>
                                        <option>182cm</option>
                                        <option>183cm</option>
                                        <option>184cm</option>
                                        <option>185cm</option>
                                        <option>186cm</option>
                                        <option>187cm</option>
                                        <option>188cm</option>
                                        <option>189cm</option>
                                        <option>190cm</option>
                                        <option>191cm</option>
                                        <option>192cm</option>
                                        <option>193cm</option>
                                        <option>194cm</option>
                                        <option>195cm</option>
                                        <option>196cm</option>
                                        <option>197cm</option>
                                        <option>198cm</option>
                                        <option>199cm</option>
                                        <option>200cm</option>
                                        <option>201cm</option>
                                        <option>202cm</option>
                                        <option>203cm</option>
                                        <option>204cm</option>
                                        <option>205cm</option>
                                        <option>206cm</option>
                                        <option>207cm</option>
                                        <option>208cm</option>
                                        <option>209cm</option>
                                        <option>210cm</option>
                                        <option>211cm</option>
                                        <option>212cm</option>
                                        <option>213cm</option>
                                        <option>214cm</option>
                                        <option>215cm</option>
                                        <option>216cm</option>
                                        <option>217cm</option>
                                        <option>218cm</option>
                                        <option>219cm</option>
                                        <option>220cm</option>
                                    </select>
                                    <p class="help-block">Critério de exclusão: Masculino >= 165cm;Feminino >= 160cm;</p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="nacionalidade">Nacionalidade</label>
                                    <select class="form-control">
                                        <option>Portuguesa</option>
                                        <option>Outra</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-6">
                        <h3>RESIDÊNCIA</h3>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="req" for="rua">Rua*:</label>
                                    <input type="text" class="form-control" id="rua" placeholder="Rua">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label class="req" for="codigopostal">Código Postal*:</label>
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-5 col-xs-5">
                                            <input type="text" class="form-control" id="codigopostal1" placeholder="">
                                        </div>
                                        <div class="col-md-2 col-xs-2">-</div>
                                        <div class="col-md-5 col-xs-5">
                                            <input type="text" class="form-control" id="codigopostal2" placeholder="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="req" for="localidade">Localidade*:</label>
                                    <input type="text" class="form-control" id="localidade" placeholder="Localidade">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="req" for="concelho">Concelho*:</label>
                                    <input type="text" class="form-control" id="concelho" placeholder="Concelho">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="req" for="pais">País*:</label>
                                    <input type="text" class="form-control" id="pais" placeholder="Pais">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="telf">Telefone**:</label>
                                    <input type="text" class="form-control" id="telf" placeholder="Telefone">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="telm">Telemóvel**:</label>
                                    <input type="text" class="form-control" id="telem" placeholder="Telemóvel">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">Email**:</label>
                                    <input type="text" class="form-control" id="email" placeholder="Email">
                                </div>
                            </div>
                        </div>

                        <h3>OUTROS DADOS</h3>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="req" for="nif">Número identificação Fiscal*:</label>
                                    <input type="text" class="form-control" id="nif" placeholder="Número Identificação Fiscal">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="habi">Habilitções Literárias</label>
                                    <select class="form-control">
                                        <option>9º Ano</option>
                                        <option>10º Ano</option>
                                        <option>11º Ano</option>
                                        <option>12º Ano</option>
                                        <option>Licenciatura</option>
                                        <option>Mestrado / Doutoramento</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="curso">Curso:</label>
                                    <input type="text" class="form-control" id="curso" placeholder="Curso">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="req" for="profissao">Profissão*:</label>
                                    <input type="text" class="form-control" id="profissao" placeholder="Profissão">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <label>Serviço militar ou outras forças políciais: </label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" id="sim" name="optradio">Sim</label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" id="nao" name="optradio">Não</label>
                                </div>
                            </div>

                            <!-- PAINEL ESCONDIDO -->
                            <div id="painelescondido">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="ramo">Ramo:</label>
                                        <select class="form-control">
                                            <option>Marinha Portuguesa</option>
                                            <option>Força Aérea</option>
                                            <option>Exército</option>
                                            <option>Polícia Judiciária</option>
                                            <option>Polícia Segurança Pública ( PSP )</option>
                                            <option>Guarda Nacional Républicana ( GNR )</option>
                                            <option>Serviços de Estrangeiros e Fronteiras ( SEF )</option>
                                            <option>Direcções de Alfândegas e Impostos Especiais sobre o Consumo ( DGAIEC )</option>
                                            <option>Autoridade de Segurança Alimentar e Económica ( ASAE )</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="anosramo">Tempo de prestação de serviço:</label>
                                        <br/>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="anosramo">RV:</label>
                                                <select class="form-control">
                                                    <option>0</option>
                                                    <option>1</option>
                                                    <option>2</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="anosramo">RC:</label>
                                                <select class="form-control">
                                                    <option>0</option>
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                    <option>6</option>
                                                    <option>7</option>
                                                    <option>8</option>
                                                </select>
                                            </div>
                                        </div>


                                        <p class="help-block">*** Incentivos Militares : Cada ano de prestação de serviço, aumenta em um ano a idade para o concurso.</p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Punições averbadas:</label>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="optradio">Sim</label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="optradio">Não</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Autorização para concorrer por parte da entidade onde presta serviço?:</label>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="optradio">Sim</label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="optradio">Não</label>
                                    </div>
                                </div>
                            </div>
                            <!--  / PAinel escondido -->

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="outrashabi">Outras Habilitações:</label>
                                    <textarea class="form-control" rows="5" id="outrashabi"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="local">Local onde deseja prestar provas</label>
                            <select class="form-control">
                                <option>Lisboa</option>
                                <option>Funchal</option>
                                <option>Ponta Delgada</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <h3 class="text-danger">Declaro sobre compromisso de honra o seguinte:</h3>
                        <p>
                            <ul class="list-group">
                                <li class="list-group-item">Que possuo robustez fisica para o desempenho da função de agente e não estou inibido/a ou interdito/a do exercicio de funções públicas, não sofro de doenças contagiosas;</li>
                                <li class="list-group-item">Não fui condenado por qualquer crime doloso;</li>
                                <li class="list-group-item">Tenho bom comportamento moral e cívico;</li>
                                <li class="list-group-item">Não reprovei mais do que uma vez em concursos anteriores;</li>
                                <li class="list-group-item">Não estou abrangido pelo estatuto de objetor de consciência.</li>
                            </ul>
                        </p>
                        
                      <asp:Button ID="btn_enviar" class="btn btn-warning" runat="server" Text="Enviar" OnClick="btn_enviar_click" />
                    </div>





                </div>
            </div>
        
        <br/>
        <br/>
        <br/>
        <div class="footer">Concurso @2022</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/jquery.js"></script>
    <script src="js/moment.js"></script>
    <script src="js/locale/pt.js"></script>
    <script src="js/datetimepicker.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#painelescondido").hide();
            $('#datanascimento').datetimepicker({
                locale: 'pt',
                viewMode: 'years',
                format: 'DD/MM/YYYY'
            });
            $('#emissao').datetimepicker({
                locale: 'pt',
                viewMode: 'days',
                format: 'DD/MM/YYYY'
            });
            $('#sim').click(function () {
                if ($('#sim').is(':checked')) {
                    $("#painelescondido").show();
                }
            });

            $('#nao').click(function () {
                if ($('#nao').is(':checked')) {
                    $("#painelescondido").hide();
                };
            });
        });
    </script>

    </form>
</body>
</html>
