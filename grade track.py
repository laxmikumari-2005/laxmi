from tkinter import*

main=Tk()
main.title("Student Grade Tracker")
main.geometry("500x400")

def Calculation():
 mathematics=int(mathematicsentry.get())
 physics=int(physicsentry.get())
 chemistry=int(chemistryentry.get())
    
 total=(mathematics+physics+chemistry)
 Label(text=f"{total}",font="arial 10").place(x=250,y=170)

 average=int(total/3)
 Label(text=f"{average}",font="arial 10").place(x=175,y=255)
 if average>40:
   grade="PASS"
 else:
   grade="FAIL"
    
 Label(text=f"{grade}",font="arial 10",width=8,fg="blue").place(x=180,y=260)

sub1=Label(main,text="Mathematics",font="arial")
sub1.place(x=50,y=20)

sub2=Label(main,text="Physics",font="arial")
sub2.place(x=50,y=70)

sub3=Label(main,text="Chemistry",font="arial")
sub3.place(x=50,y=120)

total=Label(main,text="Total",font="arial")
total.place(x=50,y=170)

average=Label(main,text="Average",font="arial")
average.place(x=50,y=210)

grade=Label(main,text="Grade",font="arial")
grade.place(x=50,y=250)

mathematicsvalue=StringVar()
physicsvalue=StringVar()
chemistryvalue=StringVar()

mathematicsentry=Entry(main,textvariable=mathematicsvalue,font="arial",width=15)
physicsentry=Entry(main,textvariable=physicsvalue,font="arial",width=15)
chemistryentry=Entry(main,textvariable=chemistryvalue,font="arial",width=15)

mathematicsentry.place(x=250,y=20)
physicsentry.place(x=250,y=70)
chemistryentry.place(x=250,y=120)

Button(text="Calculate",font="arial 10",bg="white",bd=10,command=Calculation).place(x=50,y=300)
Button(text="Exit",font="arial 10",bg="white",bd=10,width=8,command=lambda:exit()).place(x=350,y=300)

main.mainloop()