using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;

namespace site
{
    public partial class oferta_emprego : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_enviar_Click(object sender, EventArgs e)
        {
            
            DateTime dataNascimento;

            if (DateTime.TryParse(tb_data.Text, out dataNascimento))
            {
                if (dataNascimento.AddYears(18) > DateTime.Today)
                {
                    // Exibir mensagem de erro
                    lbl_erro.Text = "Você deve ter pelo menos 18 anos para se inscrever.";
                    return;
                }

                // Processar o formulário
            }
            else
            {
                // Exibir mensagem de erro
                lbl_erro.Text = "A data de nascimento inserida é inválida.";
            }



            try
            {

                MailMessage mail = new MailMessage();
                SmtpClient servidor = new SmtpClient();

                mail.From = new MailAddress(tb_de.Text);
                mail.To.Add(new MailAddress(tb_para.Text));
                mail.Subject = tb_assunto.Text;
                mail.IsBodyHtml = true;


                Attachment anexo = new Attachment(FileUpload1.FileContent, FileUpload1.FileName);


                mail.Body = "nome: " + tb_nome.Text + 
                            "Morada: " + tb_morada + 
                            "Data de Nascimento: " + tb_data + 
                            "Email: " + tb_email + 
                            "Candidatou-se a vaga de: " + DropDownList1;

                servidor.Host = ConfigurationManager.AppSettings["SMTP_HOST"];
                servidor.Port = int.Parse(ConfigurationManager.AppSettings["SMTP_PORT"]);

                string smtpUtilizador = ConfigurationManager.AppSettings["SMTP_USER"];
                string smtpPassword = ConfigurationManager.AppSettings["SMTP_PASS"];

                servidor.Credentials = new NetworkCredential(smtpUtilizador, smtpPassword);
                servidor.EnableSsl = true;

                servidor.Send(mail);

                lbl_Mensagem.Text = "Email enviado com sucesso !!!";

            }

            catch (Exception ex)
            {
                lbl_Mensagem.Text = ex.Message;
            }
        }
    }
}