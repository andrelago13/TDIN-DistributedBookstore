using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Common
{
    public class Utils
    {
        public static void ControlInvoke(Control c, Action a)
        {
            if (c.InvokeRequired)
            {
                c.Invoke(new MethodInvoker(delegate { a(); }));
            }
            else
            {
                a();
            }
        }
    }
}
