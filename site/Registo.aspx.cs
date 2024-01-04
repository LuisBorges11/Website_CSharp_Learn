using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Security.Cryptography;
using System.IO;

namespace site
{
    public partial class Registo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String caminhoPDFS = ConfigurationManager.AppSettings["PathPDFS"];
        }

        protected void btn_gerar_Click(object sender, EventArgs e)
        {
            String caminhoPDFS = ConfigurationManager.AppSettings["PathPDFS"];
            String SiteURL = ConfigurationManager.AppSettings["SiteURL"];

            String pdfTemplate = caminhoPDFS + "Template\\ficha.pdf";

            //Response.Write(pdfTemplate);

            String nomePDF = DateTime.Now.ToString().Replace("/", "").Replace(":", 
                "").Replace(" ", "") + ".pdf";


            //Response.Write(nomePDF.Replace("/", "").Replace(":","").Replace(" ","");
            //Response.End();

            String novoFicheiro = caminhoPDFS + "Gerados\\" + nomePDF;

            PdfReader preader = new PdfReader(pdfTemplate);
            PdfStamper pstamper = new PdfStamper(preader, new FileStream(novoFicheiro,
                FileMode.Create));

            AcroFields pdfFields = pstamper.AcroFields;
            pdfFields.SetField("nome", tb_nome.Text);
            pdfFields.SetField("socio", tb_socio.Text);
            pdfFields.SetField("dia", tb_dia.Text);
            pdfFields.SetField("mes", tb_mes.Text);
            pdfFields.SetField("ano", tb_ano.Text);

            pstamper.Close();

            //Response.Write(novoFicheiro);

            Response.Redirect(SiteURL + "PDFS/Gerados/" + nomePDF);

        }

        public static string EncryptString(string Message)
        {
            string Passphrase = "atec";
            byte[] Results;
            System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();



            // Step 1. We hash the passphrase using MD5
            // We use the MD5 hash generator as the result is a 128 bit byte array
            // which is a valid length for the TripleDES encoder we use below



            MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
            byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));



            // Step 2. Create a new TripleDESCryptoServiceProvider object
            TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();



            // Step 3. Setup the encoder
            TDESAlgorithm.Key = TDESKey;
            TDESAlgorithm.Mode = CipherMode.ECB;
            TDESAlgorithm.Padding = PaddingMode.PKCS7;



            // Step 4. Convert the input string to a byte[]
            byte[] DataToEncrypt = UTF8.GetBytes(Message);



            // Step 5. Attempt to encrypt the string
            try
            {
                ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
                Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);
            }
            finally
            {
                // Clear the TripleDes and Hashprovider services of any sensitive information
                TDESAlgorithm.Clear();
                HashProvider.Clear();
            }



            // Step 6. Return the encrypted string as a base64 encoded string



            string enc = Convert.ToBase64String(Results);
            enc = enc.Replace("+", "KKK");
            enc = enc.Replace("/", "JJJ");
            enc = enc.Replace("\\", "III");
            return enc;
        }

        protected void tb_dia_TextChanged(object sender, EventArgs e)
        {
            tb_dia.MaxLength = 2;
        }
    }
}