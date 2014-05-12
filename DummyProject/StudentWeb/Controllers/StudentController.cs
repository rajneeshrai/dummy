using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StudentWeb.Models.View;
using Models;

namespace StudentWeb.Controllers
{
    public class StudentController : Controller
    {
        //
        // GET: /Student/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Student/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        [HttpGet]
        public ActionResult Create()
        {
            ViewData["msg"] = "Student asd";
            return View();
        }

        //[HttpPost]
        //public ActionResult Create(Student student)
        //{
        //    EFStudentDB.Business.Student obj = new EFStudentDB.Business.Student();
        //    obj.Add(new global::Models.DomainModel.Student()
        //    {
        //        ID = student.ID,
        //        Name = student.Name,
        //        FatherName = student.FatherName,
        //        MotherName = student.MotherName,
        //        Gender = student.Gender,
        //        Age = student.Age,
        //        AddressDetails = new global::Models.DomainModel.Address()
        //        {
        //            ID = student.AddressDetails.ID,
        //            HouseNo = student.AddressDetails.HouseNo,
        //            Locality = student.AddressDetails.Locality,
        //            City = student.AddressDetails.City,
        //            District = student.AddressDetails.District,
        //            State = student.AddressDetails.State
        //        }
        //    });
        //    return View();
        //}
        //
        // POST: /Student/Create

        [HttpPost]
        public ActionResult Create(Models.View.Student model, FormCollection collection)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    global::Models.DomainModel.Student objStudent = new global::Models.DomainModel.Student()
                        {
                            Name = Request.Form["Name"],
                            FatherName = Request.Form["FatherName"],
                            MotherName = Request.Form["MotherName"],
                            Gender = Request.Form["Gender"],
                            Age = Convert.ToInt32(Request.Form["Age"]),
                            AddressDetails = new global::Models.DomainModel.Address()
                            {
                                HouseNo = Request.Form["HouseNo"],
                                Locality = Request.Form["HouseNo"],
                                City = Request.Form["HouseNo"],
                                District = Request.Form["HouseNo"],
                                State = Request.Form["HouseNo"]
                            }
                        };
                    EFStudentDB.Business.Student.Add(objStudent);
                    ViewData["Message"] = "Student Created Successfully..";
                    //return RedirectToAction("Index", "Home");
                    return View("~/Views/Home/Index.aspx");
                }
                ViewData["msg"] = "Fill Required Fields";
                return View(model);
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Student/Edit/5

        public ActionResult Edit(int id)
        {
            global::Models.DomainModel.Student student = EFStudentDB.Business.Student.Get(id);
            return View(new Models.View.Student()
            {
                ID = student.ID,
                Name = student.Name,
                FatherName = student.FatherName,
                MotherName = student.MotherName,
                Age = student.Age,
                Gender = student.Gender,
                CreatedDate = student.CreatedDate,
                CreatedBy = student.CreatedBy
            });
        }

        //
        // POST: /Student/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    global::Models.DomainModel.Student objStudent = new global::Models.DomainModel.Student()
                    {
                        ID = Convert.ToInt32(Request.Form["ID"]),
                        Name = Request.Form["Name"],
                        FatherName = Request.Form["FatherName"],
                        MotherName = Request.Form["MotherName"],
                        Gender = Request.Form["Gender"],
                        Age = Convert.ToInt32(Request.Form["Age"]),
                        AddressDetails = new global::Models.DomainModel.Address()
                        {
                            HouseNo = Request.Form["HouseNo"],
                            Locality = Request.Form["HouseNo"],
                            City = Request.Form["HouseNo"],
                            District = Request.Form["HouseNo"],
                            State = Request.Form["HouseNo"]
                        }
                    };
                    EFStudentDB.Business.Student.Update(objStudent);
                    ViewData["Message"] = "Student Updated Successfully..";
                    //return RedirectToAction("Index", "Home");
                    return View("~/Views/Home/Index.aspx");
                }
                ViewData["msg"] = "Fill Required Fields";
                return View();
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Student/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Student/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ViewResult List()
        {
            List<global::Models.DomainModel.Student> lsStudent = EFStudentDB.Business.Student.GetAll();
            var result = (from student in lsStudent
                          select new Models.View.Student()
                              {
                                  ID = student.ID,
                                  Name = student.Name,
                                  FatherName = student.FatherName,
                                  MotherName = student.MotherName,
                                  Age = student.Age,
                                  Gender = student.Gender,
                                  CreatedDate = student.CreatedDate,
                                  CreatedBy = student.CreatedBy
                              }).ToList();
            return View(result);
        }
    }
}
