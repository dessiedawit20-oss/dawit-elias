###### python

import speech\_recognition as sr

import os



\# Initialize the microphone listener

recognizer = sr.Recognizer()



def listen\_to\_user():

&#x20;   with sr.Microphone() as source:

&#x20;       print("\\n🤖 Assistant is listening...")

&#x20;       # Reduce background noise interference

&#x20;       recognizer.adjust\_for\_ambient\_noise(source)

&#x20;       audio = recognizer.listen(source)

&#x20;       

&#x20;   try:

&#x20;       # Convert spoken audio into readable text

&#x20;       user\_text = recognizer.recognize\_google(audio)

&#x20;       print(f"👤 You said: {user\_text}")

return user\_text.lower()

&#x20;   except sr.UnknownValueError:

&#x20;       print("🤖 Assistant: Sorry, I didn't catch that.")

&#x20;       return ""

&#x20;   except sr.RequestError:

&#x20;       print("🤖 Assistant: Network error connection failed.")

&#x20;       return ""



def speak\_response(text):

&#x20;   print(f"🤖 Assistant response: {text}")

&#x20;   # This command uses the system's built-in text-to-speech module

&#x20;   os.system(f'espeak "{text}"')



\# Main loop to keep your desktop robot running infinitely

speak\_response("Robot assistant system initialized. I am ready.")

while True:

&#x20;   command = listen\_to\_user()

&#x20;   

&#x20;   if "hello" in command:

&#x20;       speak\_response("Hello there! How can I help you today?")

&#x20;   elif "time" in command:

&#x20;       from datetime import datetime

&#x20;       current\_time = datetime.now().strftime("%H:%M")

&#x20;       speak\_response(f"The current time is {current\_time}")

&#x20;   elif "stop" in command or "shutdown" in command:

&#x20;       speak\_response("Shutting down the assistant system. Goodbye.")

&#x20;       break



