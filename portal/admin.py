from django.contrib import admin
from .models import (
    Subject, FYSem1, SYSem3, TYSem5,
    LydiaMonday, LydiaTuesday, LydiaWednesday, LydiaThursday, LydiaFriday, LydiaSaturday,
    RachanaMonday, RachanaTuesday, RachanaWednesday, RachanaThursday, RachanaFriday, RachanaSaturday,
    RoyMonday, RoyTuesday, RoyWednesday, RoyThursday, RoyFriday, RoySaturday,
    MelissaMonday, MelissaTuesday, MelissaWednesday, MelissaThursday, MelissaFriday, MelissaSaturday,
    AaronMonday, AaronTuesday, AaronWednesday, AaronThursday, AaronFriday, AaronSaturday,
    AshokMonday, AshokTuesday, AshokWednesday, AshokThursday, AshokFriday, AshokSaturday,
    SubhashMonday, SubhashTuesday, SubhashWednesday, SubhashThursday, SubhashFriday, SubhashSaturday,
    FyMonday, FyTuesday, FyWednesday, FyThursday, FyFriday, FySaturday,
    SyMonday, SyTuesday, SyWednesday, SyThursday, SyFriday, SySaturday,
    TyMonday, TyTuesday, TyWednesday, TyThursday, TyFriday, TySaturday,
    FYPapers,SYPapers,TYPapers,
    FYNotes, SYNotes, TYNotes,
    CGNotifications,
    SYNotifications,TYNotifications
)

admin.site.register(Subject)
admin.site.register(FYSem1)
admin.site.register(SYSem3)
admin.site.register(TYSem5)


#### Notes ########
admin.site.register(FYNotes)
admin.site.register(SYNotes)
admin.site.register(TYNotes)


#### Papers ########
admin.site.register(FYPapers)
admin.site.register(SYPapers)
admin.site.register(TYPapers)


# ----------------- FY Notifications --------------------
admin.site.register(CGNotifications)

# ----------------- SY Notifications --------------------
admin.site.register(SYNotifications)

# ----------------- TY Notifications --------------------
admin.site.register(TYNotifications)

# lydia
admin.site.register(LydiaMonday)
admin.site.register(LydiaTuesday)
admin.site.register(LydiaWednesday)
admin.site.register(LydiaThursday)
admin.site.register(LydiaFriday)
admin.site.register(LydiaSaturday)

# Rachana
admin.site.register(RachanaMonday)
admin.site.register(RachanaTuesday)
admin.site.register(RachanaWednesday)
admin.site.register(RachanaThursday)
admin.site.register(RachanaFriday)
admin.site.register(RachanaSaturday)

# Roy
admin.site.register(RoyMonday)
admin.site.register(RoyTuesday)
admin.site.register(RoyWednesday)
admin.site.register(RoyThursday)
admin.site.register(RoyFriday)
admin.site.register(RoySaturday)

# Melissa
admin.site.register(MelissaMonday)
admin.site.register(MelissaTuesday)
admin.site.register(MelissaWednesday)
admin.site.register(MelissaThursday)
admin.site.register(MelissaFriday)
admin.site.register(MelissaSaturday)

# Aaron
admin.site.register(AaronMonday)
admin.site.register(AaronTuesday)
admin.site.register(AaronWednesday)
admin.site.register(AaronThursday)
admin.site.register(AaronFriday)
admin.site.register(AaronSaturday)

# Ashok
admin.site.register(AshokMonday)
admin.site.register(AshokTuesday)
admin.site.register(AshokWednesday)
admin.site.register(AshokThursday)
admin.site.register(AshokFriday)
admin.site.register(AshokSaturday)

# Subhash
admin.site.register(SubhashMonday)
admin.site.register(SubhashTuesday)
admin.site.register(SubhashWednesday)
admin.site.register(SubhashThursday)
admin.site.register(SubhashFriday)
admin.site.register(SubhashSaturday)

# Fy
admin.site.register(FyMonday)
admin.site.register(FyTuesday)
admin.site.register(FyWednesday)
admin.site.register(FyThursday)
admin.site.register(FyFriday)
admin.site.register(FySaturday)

# Sy
admin.site.register(SyMonday)
admin.site.register(SyTuesday)
admin.site.register(SyWednesday)
admin.site.register(SyThursday)
admin.site.register(SyFriday)
admin.site.register(SySaturday)

# Ty
admin.site.register(TyMonday)
admin.site.register(TyTuesday)
admin.site.register(TyWednesday)
admin.site.register(TyThursday)
admin.site.register(TyFriday)
admin.site.register(TySaturday)
