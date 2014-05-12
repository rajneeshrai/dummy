using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Models.DomainModel
{
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
}
