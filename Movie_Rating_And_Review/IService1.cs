using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Movie_Rating_And_Review
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        List<string> LoginUserDetails(UserDetails userInfo);
        
        [OperationContract]
        string Register(RegisterUser user);
        // TODO: Add your service operations here
    }

    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    // You can add XSD files into the project. After building the project, you can directly use the data types defined there, with the namespace "Movie_Rating_And_Review.ContractType".
    [DataContract]
    public class UserDetails
    {
        string username = string.Empty;
        string password = string.Empty;

        [DataMember]
        public string UserName
        {
            get { return username; }
            set { username = value; }
        }
        [DataMember]
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
    }

    [DataContract]
    public class RegisterUser
    {
        string username = string.Empty;
        string password = string.Empty;

        [DataMember]
        public string UserName
        {
            get { return username; }
            set { username = value; }
        }
        [DataMember]
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
    }
}
