﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimplCommerce.InfrastructureCore.Models
{
    public abstract class ValidatableObject
    {
        public virtual bool IsValid()
        {
            return Validate().Count == 0;
        }

        public virtual IList<ValidationResult> Validate()
        {
            IList<ValidationResult> validationResults = new List<ValidationResult>();
            Validator.TryValidateObject(this, new ValidationContext(this, null, null), validationResults, true);
            return validationResults;
        }
    }
}
