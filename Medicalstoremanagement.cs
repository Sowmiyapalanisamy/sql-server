using System;
using System.Collections.Generic;
using System.Text;

namespace MedicalStorManagement
{
    internal class Login
    {
        private int userid;
        private string email;
        private string password;
        private string repassword;

        public int Userid
        {
            set
            {
                this.userid = value;
            }
            get
            {
                return this.userid;
            }
        }
        public string Email
        {
            get
            {
                return this.email;
            }
            set
            {
                this.email = value;
            }
        }
        public string Password
        {
            get
            {
                return this.password;
            }
            set
            {
                this.password = value;
            }
        }
        public string Repassword
        {
            get
            {
                return this.repassword;
            }
            set
            {
                this.repassword = value;
            }
        }
    }
    class Bookingmedicine
    {
        private int medicineid;
        private string medicinename;
        private int availability;

        public int Medicineid
        {
            get
            {
                return this.medicineid;
            }
            set
            {
                this.medicineid = value;
            }
        }
        public string Medicinename
        {
            get
            {
                return this.medicinename;
            }
            set
            {
                this.medicinename = value;
            }
        }
        public int Availability
        {
            get
            {
                return this.availability;
            }
            set
            {
                this.availability = value;
            }
        }
    }
    class Eventsdetails
    {
        private string eventid;
        private string eventname;
        private decimal discount;

        public string Eventid
        {
            get
            {
                return this.eventid;
            }
            set
            {
                this.eventid = value;
            }
        }
        public string Eventname
        {
            get
            {
                return this.eventname;
            }
            set
            {
                this.eventname = value;
            }
        }
        public decimal Discount
        {
            get
            {
                return this.discount;
            }
            set
            {
                this.discount = value;
            }
        }
    }
    class Invitation
    {
        private int invitationid;
        private string username;
        private decimal discount;
        public DateTime sentat;

        public int Invitationid
        {
            get
            {
                return this.invitationid;
            }
            set
            {
                this.invitationid = value;
            }
        }
        public string Username
        {
            get
            {
                return this.username;
            }
            set
            {
                this.username = value;
            }
        }
        public decimal Discount
        {
            get
            {
                return this.discount;
            }
            set
            {
                this.discount = value;
            }
        }
        public DateTime Sentat
        {
            get
            {
                return this.sentat;
            }
            set
            {
                this.sentat = value;
            }
        }
    }
    class Payments
    {
        private int paymentid;
        private int userid;
        private decimal transactionamount;
        private string paymentmethod;
        private string reciept;
        private DateTime paymentat;

        public int Paymentid
        {
            get
            {
                return this.paymentid;
            }
            set
            {
                this.paymentid = value;
            }
        }
        public int Userid
        {
            get
            {
                return this.userid;
            }
            set
            {
                this.userid = value;
            }
        }
        public decimal Transactionamount
        {
            get
            {
                return this.transactionamount;
            }
            set
            {
                this.transactionamount = value;
            }
        }
        public string Paymentmethod
        {
            get
            {
                return this.paymentmethod;
            }
            set
            {
                this.paymentmethod = value;
            }
        }
        public string Reciept
        {
            get
            {
                return this.reciept;
            }
            set
            {
                this.reciept = value;
            }
        }
        public DateTime Paymentat
        {
            get
            {
                return this.paymentat;
            }
            set
            {
                this.paymentat = value;
            }
        }
    }
    class Logins
    {
        private int loginid;
        private int userid;
        private string action;
        private DateTime actionat;

        public int Loginid
        {
            get
            {
                return this.loginid;
            }
            set
            {
                this.loginid = value;
            }
        }
        public int Userid
        {
            get
            {
                return this.userid;
            }
            set
            {
                this.userid = value;
            }
        }
        public string Action
        {
            get
            {
                return this.action;
            }
            set
            {
                this.action = value;
            }
        }
        public DateTime Actionat
        {
            get
            {
                return this.actionat;
            }
            set
            {
                this.actionat = value;
            }
        }
    }
}
