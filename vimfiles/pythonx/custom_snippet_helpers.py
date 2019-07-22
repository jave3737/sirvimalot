from datetime import datetime
def print_date_time():
    now = datetime.now()
    return now.strftime("%Y-%m-%d %a %I:%M %p")

def print_date(): 
    now = datetime.now()
    return now.strftime("%Y-%m-%d")

def print_time():
    now = datetime.now()
    return now.strftime("%I:%M %p")
