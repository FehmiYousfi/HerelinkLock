.class public Lorg/cubepilot/herelinksettings/MainActivity$TabAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabAdapter"
.end annotation


# static fields
.field private static final NUM_ITEMS:I = 0x7


# instance fields
.field page:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 8

    .line 43
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string v0, "Radio"

    const-string v1, "Joystick"

    const-string v2, "Buttons"

    const-string v3, "Frequency"

    const-string v4, "AirUnit"

    const-string v5, "DroneShare"

    const-string v6, "RemoteID"

    const-string v7, "Extras"

    .line 84
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/MainActivity$TabAdapter;->page:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    const-string v0, "persist.hl.extras"

    .line 49
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    const/4 v0, 0x7

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 77
    :pswitch_0
    new-instance p1, Lorg/cubepilot/herelinksettings/Extras;

    invoke-direct {p1}, Lorg/cubepilot/herelinksettings/Extras;-><init>()V

    return-object p1

    .line 74
    :pswitch_1
    new-instance p1, Lorg/cubepilot/herelinksettings/RemoteID;

    invoke-direct {p1}, Lorg/cubepilot/herelinksettings/RemoteID;-><init>()V

    return-object p1

    .line 72
    :pswitch_2
    invoke-static {}, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->newInstance()Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_3
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit;

    invoke-direct {p1}, Lorg/cubepilot/herelinksettings/AirUnit;-><init>()V

    return-object p1

    .line 68
    :pswitch_4
    invoke-static {}, Lorg/cubepilot/herelinksettings/FrequencySettings;->newInstance()Lorg/cubepilot/herelinksettings/FrequencySettings;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_5
    new-instance p1, Lorg/cubepilot/herelinksettings/ButtonSettings;

    invoke-direct {p1}, Lorg/cubepilot/herelinksettings/ButtonSettings;-><init>()V

    return-object p1

    .line 63
    :pswitch_6
    new-instance p1, Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-direct {p1}, Lorg/cubepilot/herelinksettings/JoystickSettings;-><init>()V

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/MainActivity;->access$002(Lorg/cubepilot/herelinksettings/JoystickSettings;)Lorg/cubepilot/herelinksettings/JoystickSettings;

    .line 64
    invoke-static {}, Lorg/cubepilot/herelinksettings/MainActivity;->access$000()Lorg/cubepilot/herelinksettings/JoystickSettings;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_7
    new-instance p1, Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-direct {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/MainActivity$TabAdapter;->page:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
