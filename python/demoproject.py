
# Email Security Agent - Version0

def classify_email(email):
    email=email.lower()
    
    dangerous_words=[
        "steal password",
        "send otp",
        "bank pin",
        "disable antivirus",
        "gift card"
    ]
    
    confused_words=[
        "unknown sender",
        "unexpected invoice",
        "verify account"
    ]
    
    # step 1:Check for dangerous emails
    for word in dangerous_words:
        if word in email:
            return "Dangerous"
        
    # step2:check for emails needing human review
    for word in confused_words:
        if word in email:
            return "Confused:Lets wait for BOSS review"
        
    #step3:otherwise,classify as safe
    return "Safe"

def route_email(category):
    if category == "Safe":
        return "Inbox"
    
    elif category=="Confused:Lets wait for BOSS review":
        return "BOSS review"
    
    else:
        return "Spam"
    

# test the agent
email=input("enter email text:")

category = classify_email(email)
destination=route_email(category)

print("Category:",category)
print("Destination:",destination)    