.class public Lorg/cubepilot/herelinksettings/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cubepilot/herelinksettings/MainActivity$TabAdapter;
    }
.end annotation


# static fields
.field private static js_settings:Lorg/cubepilot/herelinksettings/JoystickSettings;

.field public static mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;


# instance fields
.field private adapterViewPager:Lorg/cubepilot/herelinksettings/MainActivity$TabAdapter;

.field public mEventHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 36
    sput-object p0, Lorg/cubepilot/herelinksettings/MainActivity;->mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;

    return-void
.end method

.method static synthetic access$000()Lorg/cubepilot/herelinksettings/JoystickSettings;
    .locals 1

    .line 29
    sget-object v0, Lorg/cubepilot/herelinksettings/MainActivity;->js_settings:Lorg/cubepilot/herelinksettings/JoystickSettings;

    return-object v0
.end method

.method static synthetic access$002(Lorg/cubepilot/herelinksettings/JoystickSettings;)Lorg/cubepilot/herelinksettings/JoystickSettings;
    .locals 0

    .line 29
    sput-object p0, Lorg/cubepilot/herelinksettings/MainActivity;->js_settings:Lorg/cubepilot/herelinksettings/JoystickSettings;

    return-object p0
.end method

.method private static getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .locals 1

    .line 190
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 196
    invoke-virtual {p1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result p1

    if-gez p3, :cond_0

    .line 198
    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result p0

    .line 203
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isMyServiceRunning(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "activity"

    .line 94
    invoke-virtual {p0, v0}, Lorg/cubepilot/herelinksettings/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 95
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 8

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x0

    .line 218
    invoke-static {p1, v0, v1, p2}, Lorg/cubepilot/herelinksettings/MainActivity;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    const/16 v1, 0xb

    .line 220
    invoke-static {p1, v0, v1, p2}, Lorg/cubepilot/herelinksettings/MainActivity;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v5

    const/4 v1, 0x1

    .line 222
    invoke-static {p1, v0, v1, p2}, Lorg/cubepilot/herelinksettings/MainActivity;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v4

    const/16 v1, 0xe

    .line 224
    invoke-static {p1, v0, v1, p2}, Lorg/cubepilot/herelinksettings/MainActivity;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v6

    const/16 v1, 0x15

    .line 226
    invoke-static {p1, v0, v1, p2}, Lorg/cubepilot/herelinksettings/MainActivity;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v7

    .line 228
    sget-object v2, Lorg/cubepilot/herelinksettings/MainActivity;->js_settings:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual/range {v2 .. v7}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setAxisValues(FFFFF)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 163
    sget-object v0, Lorg/cubepilot/herelinksettings/MainActivity;->js_settings:Lorg/cubepilot/herelinksettings/JoystickSettings;

    if-nez v0, :cond_0

    .line 164
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 177
    invoke-direct {p0, p1, v1}, Lorg/cubepilot/herelinksettings/MainActivity;->processJoystickInput(Landroid/view/MotionEvent;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 181
    invoke-direct {p0, p1, v0}, Lorg/cubepilot/herelinksettings/MainActivity;->processJoystickInput(Landroid/view/MotionEvent;I)V

    const/4 p1, 0x1

    return p1

    .line 184
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$onCreate$0$MainActivity(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 131
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "org.cubepilot.otaupdater"

    const-string v2, "org.cubepilot.otaupdater.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/MainActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 112
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 113
    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/MainActivity;->requestWindowFeature(I)Z

    .line 114
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 116
    const-class v0, Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-direct {p0, v0}, Lorg/cubepilot/herelinksettings/MainActivity;->isMyServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    const-string v1, "RadioStatService is not running, starting"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    const v0, 0x7f0c0067

    .line 121
    invoke-virtual {p0, v0}, Lorg/cubepilot/herelinksettings/MainActivity;->setContentView(I)V

    const v0, 0x7f090238

    .line 122
    invoke-virtual {p0, v0}, Lorg/cubepilot/herelinksettings/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/cubepilot/herelinksettings/HLViewPager;

    .line 123
    new-instance v1, Lorg/cubepilot/herelinksettings/MainActivity$TabAdapter;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/cubepilot/herelinksettings/MainActivity$TabAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v1, p0, Lorg/cubepilot/herelinksettings/MainActivity;->adapterViewPager:Lorg/cubepilot/herelinksettings/MainActivity$TabAdapter;

    .line 124
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/MainActivity;->adapterViewPager:Lorg/cubepilot/herelinksettings/MainActivity$TabAdapter;

    invoke-virtual {v0, v1}, Lorg/cubepilot/herelinksettings/HLViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Lorg/cubepilot/herelinksettings/HLViewPager;->setCurrentItem(I)V

    .line 126
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cubepilot/herelinksettings/HLViewPager;->disableScroll(Ljava/lang/Boolean;)V

    const v2, 0x7f0901b8

    .line 127
    invoke-virtual {p0, v2}, Lorg/cubepilot/herelinksettings/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    .line 128
    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 129
    new-instance v0, Lorg/cubepilot/herelinksettings/util/VerifyCheck;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/util/VerifyCheck;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/cubepilot/herelinksettings/-$$Lambda$MainActivity$W4l_wcf3nziMJ90AUbZ4ZaDudoU;

    invoke-direct {v2, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$MainActivity$W4l_wcf3nziMJ90AUbZ4ZaDudoU;-><init>(Lorg/cubepilot/herelinksettings/MainActivity;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/cubepilot/herelinksettings/util/VerifyCheck;->perform(Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;Landroid/os/Handler;)V

    .line 138
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "enable"

    const-string v3, "false"

    invoke-static {v0, v2, v3}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :try_start_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/RemoteID;->Start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    :cond_1
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 146
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 153
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time_zone"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyDown"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
