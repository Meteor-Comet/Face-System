from app import app

from .student import student
from .teacher import teacher


app.register_blueprint(student,url_prefix='/student')   #蓝图
app.register_blueprint(teacher,url_prefix='/teacher')

# http://127.0.0.1:5000/student/home