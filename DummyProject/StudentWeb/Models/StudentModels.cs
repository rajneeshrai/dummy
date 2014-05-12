using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace StudentWeb.Models.Domain
{
    #region Domain Models

    public class Student : Person
    {
        public Address AddressDetails { get; set; }
    }


    public class Person
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public string FatherName { get; set; }

        public string MotherName { get; set; }

        public int Age { get; set; }

        public string Gender { get; set; }

        public DateTime CreatedDate { get; set; }

        public string CreatedBy { get; set; }

        public bool Active { get; set; }
    }

    public class Address
    {
        public int ID { get; set; }

        public string HouseNo { get; set; }

        public string Locality { get; set; }

        public string City { get; set; }

        public string District { get; set; }

        public string State { get; set; }

        public DateTime CreatedDate { get; set; }

        public string CreatedBy { get; set; }
    }

    #endregion


}

namespace StudentWeb.Models.View
{
    #region View Models
    public class Student : Person
    {
        public Address AddressDetails { get; set; }
    }


    public class Person
    {
        [Key]
        public int ID { get; set; }

        [DisplayName("Name")]
        [Required(ErrorMessage = "Required field", AllowEmptyStrings = false)]
        public string Name { get; set; }

        [DisplayName("Father's Name")]
        [Required(ErrorMessage = "Required field")]
        public string FatherName { get; set; }

        [DisplayName("Mother's Name")]
        [Required(ErrorMessage = "Required field")]
        public string MotherName { get; set; }

        [DisplayName("Age")]
        [Required(ErrorMessage = "Required field")]
        public int Age { get; set; }

        [DisplayName("Gender")]
        [Required(ErrorMessage = "Required field")]
        public string Gender { get; set; }

        public DateTime CreatedDate { get; set; }

        public string CreatedBy { get; set; }

        public bool Active { get; set; }
    }

    public class Address
    {
        public int ID { get; set; }

        public string HouseNo { get; set; }

        public string Locality { get; set; }

        public string City { get; set; }

        public string District { get; set; }

        public string State { get; set; }

        public DateTime CreatedDate { get; set; }

        public string CreatedBy { get; set; }
    }
    #endregion
}