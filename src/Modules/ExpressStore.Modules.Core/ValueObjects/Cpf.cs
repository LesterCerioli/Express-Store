using NetDevPack.Domain;

namespace ExpressStore.Modules.Core.ValueObjects
{
    public class Cpf : ValueObject
    {
        private string _cpfNumber;

        public Cpf(string cpfNumber)
        {
            if (!IsValid(cpfNumber))
                throw new Exception("Número de CPF Inválido");


            _cpfNumber = cpfNumber;
        }

        public string CpfNumber
        {
            get { return _cpfNumber; }
            set { _cpfNumber = value; }
        }
        private bool IsValid(string cpfNumber)
        {
            //Validação do CPF
            if (string.IsNullOrWhiteSpace(cpfNumber))
                return false;

            cpfNumber = cpfNumber.Trim().Replace(".", "").Replace("-", "");

            if (cpfNumber.Length != 11)
                return false;

            if (cpfNumber == "00000000000" || cpfNumber == "11111111111" || cpfNumber == "22222222222" || cpfNumber == "33333333333" || cpfNumber == "44444444444" || cpfNumber == "55555555555" || cpfNumber == "66666666666" || cpfNumber == "77777777777" || cpfNumber == "88888888888" || cpfNumber == "99999999999")
                return false;

            var sum = 0;
            var rest = 0;
            for (var i = 1; i <= 9; i++)
                sum = sum + int.Parse(cpfNumber[i - 1].ToString()) * (11 - i);
            rest = (sum * 10) % 11;

            if ((rest == 10) || (rest == 11))
                rest = 0;
            if (rest != int.Parse(cpfNumber[9].ToString()))
                return false;

            sum = 0;
            for (var i = 1; i <= 10; i++)
                sum = sum + int.Parse(cpfNumber[i - 1].ToString()) * (12 - i);
            rest = (sum * 10) % 11;

            if ((rest == 10) || (rest == 11))
                rest = 0;
            if (rest != int.Parse(cpfNumber[10].ToString()))
                return false;

            return true;
        }
        protected override IEnumerable<object> GetEqualityComponents()
        {
            throw new NotImplementedException();
        }

    }
}
