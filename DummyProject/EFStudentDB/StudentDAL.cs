using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EFStudentDB.Business
{
    public class Student
    {
        public static int Add(Models.DomainModel.Student student)
        {
            using (TestEntities context = new TestEntities())
            {
                tblAddress objAddress = new tblAddress()
                    {
                        HouseNo = student.AddressDetails.HouseNo,
                        Locality = student.AddressDetails.Locality,
                        City = student.AddressDetails.City,
                        District = student.AddressDetails.District,
                        State = student.AddressDetails.State,
                        CreatedDate = DateTime.Now,
                        CreatedBy = "admin"
                    };

                tblPerson objPerson = new tblPerson()
                    {
                        Name = student.Name,
                        FatherName = student.FatherName,
                        MotherName = student.MotherName,
                        Age = student.Age,
                        Gender = 1,
                        CreatedDate = DateTime.Now,
                        CreatedBy = "admin"
                    };

                context.tblAddresses.AddObject(objAddress);
                context.tblPersons.AddObject(objPerson);
                tblStudent objStudent = new tblStudent()
                {
                    PersonID = objPerson.ID,
                    AddressID = objAddress.ID,
                    CreatedDate = DateTime.Now,
                    CreatedBy = "admin"
                };
                context.tblStudents.AddObject(objStudent);
                context.SaveChanges();
                return objStudent.ID;
            }
        }

        public static Models.DomainModel.Student Get(int studentID)
        {
            TestEntities context = new TestEntities();
            var student = context.tblStudents.FirstOrDefault(s => s.ID == studentID);
            return new Models.DomainModel.Student()
            {
                ID = student.ID,
                Name = student.tblPerson.Name,
                FatherName = student.tblPerson.FatherName,
                MotherName = student.tblPerson.MotherName,
                Age = student.tblPerson.Age,
                Gender = student.tblPerson.Gender.ToString(),
                CreatedBy = student.CreatedBy,
                CreatedDate = student.CreatedDate,
                AddressDetails = new Models.DomainModel.Address()
                {
                    HouseNo = student.tblAddress.HouseNo
                }
            };
        }

        public static void Update(Models.DomainModel.Student student)
        {
            using (TestEntities context = new TestEntities())
            {
                var objStudent = context.tblStudents.FirstOrDefault(s => s.ID == student.ID);
                objStudent.tblPerson.Name = student.Name;
                objStudent.tblPerson.FatherName = student.FatherName;
                objStudent.tblPerson.MotherName = student.MotherName;
                objStudent.tblPerson.Age = student.Age;
                objStudent.tblPerson.Gender = 1;
                //objStudent.tblAddress.HouseNo = student.AddressDetails.HouseNo;
                context.SaveChanges();
            }
        }

        public static List<Models.DomainModel.Student> GetAll()
        {
            TestEntities context = new TestEntities();
            return (from student in context.tblStudents select student).Select(student => new Models.DomainModel.Student()
                {
                    ID = student.ID,
                    Name = student.tblPerson.Name,
                    FatherName = student.tblPerson.FatherName,
                    MotherName = student.tblPerson.MotherName,
                    Age = student.tblPerson.Age,
                    //Gender = Convert.ToString(student.tblPerson.Gender),
                    CreatedBy = student.CreatedBy,
                    CreatedDate = student.CreatedDate,
                    AddressDetails = new Models.DomainModel.Address()
                    {
                        HouseNo = student.tblAddress.HouseNo
                    }
                }).ToList<Models.DomainModel.Student>();
        }

        public static bool Delete(int id)
        {
            try
            {
                TestEntities context = new TestEntities();
                context.tblStudents.DeleteObject(context.tblStudents.FirstOrDefault(student => student.ID == id));
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
