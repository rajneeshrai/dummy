using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EFStudentDB
{
    public class StudentDAL
    {
        public void Add(Student student)
        {
            TestEntities context = new TestEntities();
            context.tblStudents.AddObject(student);
            context.SaveChanges();
        }
    }
}
