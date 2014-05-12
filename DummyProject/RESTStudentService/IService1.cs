using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using Models.DomainModel;

namespace RESTStudentService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IStudentService" in both code and config file together.
    [ServiceContract]
    public interface IStudentService
    {
        [OperationContract]
        [WebGet(UriTemplate = "/allstudent", ResponseFormat = WebMessageFormat.Json)]
        List<Student> GetAllStudents();

        [OperationContract]
        [WebGet(UriTemplate = "/student/{id}", ResponseFormat = WebMessageFormat.Json)]
        Student GetStudent(string id);

        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "/student?st={student}", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        int AddStudent(String student);

        [OperationContract]
        [WebInvoke(Method = "DELETE", UriTemplate = "/student/{id}", ResponseFormat = WebMessageFormat.Json)]
        bool DeleteStudent(string id);
    }
}
