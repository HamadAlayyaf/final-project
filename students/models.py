from django.db import models
from Groups.models import Groups
from Department.models import Department
# Create your models here.

class Students(models.Model):
    id_Students = models.AutoField(primary_key=True)  # Field name made lowercase.
    name_Students = models.CharField(max_length=45, blank=True, null=True)  # Field name made lowercase.
    passwords = models.CharField(max_length=45, blank=True, null=True)
    id_groups_fk = models.ForeignKey(Groups, models.DO_NOTHING, db_column='id_Groups_fk', blank=True, null=True)  # Field name made lowercase.
    id_department_fk = models.ForeignKey(Department, models.DO_NOTHING, db_column='id_department_fk', blank=True, null=True)
    def __str__(self):
        return str(self.id_Students)

    class Meta:
        managed = False
        db_table = 'students'