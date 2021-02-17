from django.contrib import admin
from .models import CommitteesCharis,Groups,Projects,Evaluation,Doctors,Students,Department


admin.site.register(Groups)
admin.site.register(Projects)
admin.site.register(Evaluation)
admin.site.register(Doctors)
admin.site.register(Students)
admin.site.register(Department)
admin.site.register(CommitteesCharis)


# Register your models here.
