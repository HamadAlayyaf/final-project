from django.db import models

# Create your models here.

class Department(models.Model):
    id_department = models.AutoField(primary_key=True)
    name_department = models.CharField(max_length=45, blank=True, null=True)
    def __str__(self):
        return str(self.id_department)

    class Meta:
        managed = False
        db_table = 'department'