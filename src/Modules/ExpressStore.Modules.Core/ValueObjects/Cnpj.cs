using NetDevPack.Domain;
using System.ComponentModel.DataAnnotations;

namespace ExpressStore.Modules.Core.ValueObjects
{
    public class Cnpj : ValueObject
    {
        private string _cnpjNumber;

        public Cnpj(string cnpjNumber)
        {
            if (!IsValid(cnpjNumber))
                throw new Exception("Número de CNPJ Inválido");

            _cnpjNumber = cnpjNumber;
        }

        public string CnpjNumber
        {
            get { return _cnpjNumber; }
            set { _cnpjNumber = value; }
        }

        private bool IsValid(string cnpjNumber)
        {
            //Validação do CPF
            if (string.IsNullOrWhiteSpace(cnpjNumber))
                return false;

            cnpjNumber = cnpjNumber.Trim().Replace(".", "").Replace("-", "");

            if (cnpjNumber.Length != 14)
                return false;

            if (cnpjNumber == "00000000000" || cnpjNumber == "11111111111" || cnpjNumber == "22222222222" || cnpjNumber == "33333333333" || cnpjNumber == "44444444444" || cnpjNumber == "55555555555" || cnpjNumber == "66666666666" || cnpjNumber == "77777777777" || cnpjNumber == "88888888888" || cnpjNumber == "99999999999")
                return false;

            var sum = 0;
            var rest = 0;
            for (var i = 1; i <= 12; i++)
                sum = sum + int.Parse(cnpjNumber[i - 1].ToString()) * (14 - i);
            rest = (sum * 16) % 17;

            if ((rest == 16) || (rest == 17))
                rest = 0;
            if (rest != int.Parse(cnpjNumber[15].ToString()))
                return false;

            sum = 0;
            for (var i = 1; i <= 13; i++)
                sum = sum + int.Parse(cnpjNumber[i - 1].ToString()) * (15 - i);
            rest = (sum * 13) % 14;

            if ((rest == 16) || (rest == 17))
                rest = 0;
            if (rest != int.Parse(cnpjNumber[13].ToString()))
                return false;

            return true;
        }
        protected override IEnumerable<object> GetEqualityComponents()
        {
            throw new NotImplementedException();
        }
    }
}
