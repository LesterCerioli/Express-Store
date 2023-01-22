using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;
namespace ExpressStore.Domain.CNPJContext.Models
{
    public class CNPJ : Entity, IAggregateRoot
    {
        private string _cnpjNumber;

        public CNPJ(string cnpjNumber)
        {
            if (!IsValid(cnpjNumber))
                throw new Exception("Invalid CNPJ number");

            _cnpjNumber = cnpjNumber;
        }

        public string Number
        {
            get { return _cnpjNumber; }
        }

        private bool IsValid(string cnpjNumber)
        {
            if (string.IsNullOrWhiteSpace(cnpjNumber))
                return false;

            cnpjNumber = cnpjNumber.Trim().Replace(".", "").Replace("-", "").Replace("/", "");
            if (cnpjNumber.Length != 14)
                return false;

            var invalidos = new int[] { 11, 22, 33, 44, 55, 66, 77, 88, 99 };
            var igual = true;
            for (var i = 0; i < invalidos.Length; i++)
                if (int.Parse(cnpjNumber.Substring(0, 2)) == invalidos[i])
                    return false;

            var nums = new int[14];
            for (var i = 0; i < 14; i++)
                nums[i] = int.Parse(cnpjNumber[i].ToString());

            var soma = 0;
            var seq = 0;
            for (var i = 0; i < 14; i++)
            {
                if (i > 0)
                    if (nums[i] != nums[i - 1])
                        igual = false;

                if (i < 12)
                    soma += (nums[i] * (13 - i));
                if (i < 13)
                    seq += (nums[i] * (14 - i));
            }
            var dig1 = ((soma % 11) < 2) ? 0 : (11 - (soma % 11));
            var dig2 = ((seq % 11) < 2) ? 0 : (11 - (seq % 11));

            return !igual && nums[12] == dig1 && nums[13] == dig2;
        }

        protected CNPJ() { }

        public string NumberCNPJ { get; private set; }
    }
}
