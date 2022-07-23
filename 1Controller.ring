# Form/Window Controller - Source Code File

load "1View.ring"

import System.GUI

if IsMainSourceFile() {
	new App {
		StyleFusion()
		openWindow(:1Controller)
		exec()
	}
}

class 1Controller from windowsControllerParent

	oView = new 1View
        startf()// to start with program execution
        

func Go
oView {//للوصول إلى الأدوات على الشاشة بدون كتابة oview كل مرة
webview1.loadpage(new qurl(lineEdit1.text()))//تحميل الصفحة من مربع النص
      }		
func startf(){

oView.win.showmaximized()// لتكبير الشاشة
oView.lineEdit1.setfocus(0)//للتركيز على مربع النص 
Go()
        //oView.linedit1.setfocus()
}
