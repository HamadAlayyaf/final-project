from django.db import models
from Groups.models import Groups
from Examiners.models import Examiners
# Create your models here.

class Evaluation(models.Model):
    id_evaluation = models.AutoField(db_column='id_Evaluation', primary_key=True)  # Field name made lowercase.
    gread_evaluation = models.CharField(max_length=45, blank=True, null=True)
    id_examiners_fk = models.ForeignKey(Examiners, models.DO_NOTHING, db_column='id_Examiners_fk', blank=True, null=True)  # Field name made lowercase.
    id_groups_fk = models.ForeignKey(Groups, models.DO_NOTHING, db_column='id_Groups_fk', blank=True, null=True)  # Field name made lowercase.
    def __str__(self):
        return str(self.id_evaluation)
    class Meta:
        managed = False
        db_table = 'evaluation'

