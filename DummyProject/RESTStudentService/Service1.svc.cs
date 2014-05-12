using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Runtime.Serialization.Json;

namespace RESTStudentService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "StudentService" in code, svc and config file together.
    public class StudentService : IStudentService
    {

        public List<Models.DomainModel.Student> GetAllStudents()
        {
            try
            {
                return EFStudentDB.Business.Student.GetAll();
            }
            catch (Exception ex)
            {
                throw new FaultException(ex.Message);
            }
        }

        public Models.DomainModel.Student GetStudent(string id)
        {
            try
            {
                return EFStudentDB.Business.Student.Get(Convert.ToInt32(id));
            }
            catch (Exception ex)
            {
                throw new FaultException(ex.Message);
            }
        }

        public int AddStudent(string student)
        {
            try
            {
                System.Web.Script.Serialization.JavaScriptSerializer jscript = new System.Web.Script.Serialization.JavaScriptSerializer();
                Models.DomainModel.Student objStudent = jscript.Deserialize<Models.DomainModel.Student>(student);
                return EFStudentDB.Business.Student.Add(objStudent);
            }
            catch (Exception ex)
            {
                throw new FaultException(ex.Message);
            }
        }

        public bool DeleteStudent(string id)
        {
            try
            {
                return EFStudentDB.Business.Student.Delete(Convert.ToInt32(id));
            }
            catch (Exception ex)
            {
                throw new FaultException(ex.Message);
            }
        }
    }
}
