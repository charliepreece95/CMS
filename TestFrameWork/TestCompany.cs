using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ClassLibrary;

namespace TestFrameWork
{
    [TestClass]
    public class TestCompany
    {
        [TestMethod]
        public void InstanceOK()
        {
            //create an instance of the clsCompany class
            clsCompany ACompany = new clsCompany();
            //check to see that the class is not null
            Assert.IsNotNull(ACompany);
        }
    }
}
