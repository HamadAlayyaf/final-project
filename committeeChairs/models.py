from django.db import models
from Department.models import Department

class CommitteesCharis(models.Model):
    id_committees_charis = models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')
    name_committees_charis = models.CharField(max_length=45, blank=True, null=True,default="nothing")
    passwords = models.CharField(max_length=45, blank=True, null=True)
    id_department_fk = models.ForeignKey(Department, models.DO_NOTHING, db_column='id_department_fk', blank=True, null=True)
    def __str__(self):
        return str(self.id_committees_charis)

    class Meta:
        managed = False
        db_table = 'committees_charis'
