from django.db import models

# Create your models here.

class Examiners(models.Model):
    id_examiners = models.AutoField(db_column='id_Examiners', primary_key=True)  # Field name made lowercase.
    name_examiners = models.CharField(db_column='name_Examiners', max_length=45, blank=True, null=True)  # Field name made lowercase.
    def __str__(self):
        return str(self.id_examiners)
    class Meta:
        managed = False
        db_table = 'examiners'

