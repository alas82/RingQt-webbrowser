# Form/Window View - Generated Source Code File 
# Generated by the Ring 1.17 Form Designer
# Date : 23/07/2022
# Time : 22:02:10

Load "stdlibcore.ring"
Load "guilib.ring"

import System.GUI

if IsMainSourceFile() { 
	new App {
		StyleFusion()
		new 1View { win.show() } 
		exec()
	}
}

class 1View from WindowsViewParent
	win = new MainWindow() { 
		move(20,20)
		resize(489,423)
		setWindowTitle("Web Browser")
		setstylesheet("background-color:#aaff7f;") 

		setWindowFlags(Qt_Window | Qt_WindowMinimizeButtonHint | Qt_WindowMaximizeButtonHint | Qt_WindowCloseButtonHint) 
		Button1 = new pushbutton(win) {
			move(310,39)
			resize(102,38)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Go")
			setClickEvent(Method(:Go))
			setBtnImage(Button1,"")
			
		}
		LineEdit1 = new lineedit(win) {
			move(26,39)
			resize(260,40)
			setstylesheet("color:;background-color:white;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("https://www.lazarus-ide.org/")
			setTextChangedEvent("")
			setcursorPositionChangedEvent("")
			seteditingFinishedEvent("")
			setreturnPressedEvent("")
			setselectionChangedEvent("")
			settextEditedEvent("")
			
		}
		Layout2 = new QHBoxLayout() {
			AddWidget(Button1)
			AddWidget(LineEdit1)
			
		}
		WebView1 = new webview(win) {
			move(13,99)
			resize(461,307)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			loadpage(new qURL(""))
			setloadProgressEvent ("")
			setloadStartedEvent ("")
			setselectionChangedEvent ("")
			seturlChangedEvent ("")
			
		}
		Layout1 = new QVBoxLayout() {
			AddLayout(Layout2)
			AddWidget(WebView1)
			
		}

		oMWLayoutWidget = new qWidget() { setLayout(Layout1) }
		setCentralWidget(oMWLayoutWidget) 
	}

# End of the Generated Source Code File...