.class public Lorg/cubepilot/herelinksettings/RadioSettings;
.super Landroidx/fragment/app/Fragment;
.source "RadioSettings.java"


# static fields
.field private static m_wifiManager:Landroid/net/wifi/WifiManager;


# instance fields
.field private bound:Z

.field private instance:Lorg/cubepilot/herelinksettings/RadioSettings;

.field public final mEventHandler:Landroid/os/Handler;

.field private myid:I

.field oldactive:F

.field oldtotal:F

.field private radiostat:Lorg/cubepilot/herelinksettings/RadioStatService;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private sp_country_setting:Landroid/widget/Spinner;

.field private sp_video_sharing:Landroid/widget/Spinner;

.field t:Ljava/util/Timer;

.field private tv_air_signal_strength:Landroid/widget/TextView;

.field tv_cal_state:Landroid/widget/TextView;

.field tv_flight_distance:Landroid/widget/TextView;

.field tv_signal_strength:Landroid/widget/TextView;

.field tv_ul_rate:Landroid/widget/TextView;

.field tv_uplink_bw:Landroid/widget/TextView;

.field wifi_countries:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->bound:Z

    const-string v0, "None"

    const-string v1, "US"

    const-string v2, "FR"

    const-string v3, "CN"

    const-string v4, "JP"

    .line 46
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->wifi_countries:[Ljava/lang/String;

    .line 120
    new-instance v0, Lorg/cubepilot/herelinksettings/RadioSettings$2;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/RadioSettings$2;-><init>(Lorg/cubepilot/herelinksettings/RadioSettings;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->oldactive:F

    .line 237
    iput v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->oldtotal:F

    .line 238
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->t:Ljava/util/Timer;

    .line 240
    new-instance v0, Lorg/cubepilot/herelinksettings/RadioSettings$6;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/RadioSettings$6;-><init>(Lorg/cubepilot/herelinksettings/RadioSettings;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->radiostat:Lorg/cubepilot/herelinksettings/RadioStatService;

    return-object p0
.end method

.method static synthetic access$002(Lorg/cubepilot/herelinksettings/RadioSettings;Lorg/cubepilot/herelinksettings/RadioStatService;)Lorg/cubepilot/herelinksettings/RadioStatService;
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->radiostat:Lorg/cubepilot/herelinksettings/RadioStatService;

    return-object p1
.end method

.method static synthetic access$100(Lorg/cubepilot/herelinksettings/RadioSettings;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->bound:Z

    return p0
.end method

.method static synthetic access$102(Lorg/cubepilot/herelinksettings/RadioSettings;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->bound:Z

    return p1
.end method

.method static synthetic access$202(Lorg/cubepilot/herelinksettings/RadioSettings;I)I
    .locals 0

    .line 34
    iput p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->myid:I

    return p1
.end method

.method static synthetic access$300(Lorg/cubepilot/herelinksettings/RadioSettings;)Landroid/widget/Spinner;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->sp_country_setting:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$400(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioSettings;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->instance:Lorg/cubepilot/herelinksettings/RadioSettings;

    return-object p0
.end method

.method static synthetic access$500(Lorg/cubepilot/herelinksettings/RadioSettings;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->setCountry(I)V

    return-void
.end method

.method static synthetic access$600(Lorg/cubepilot/herelinksettings/RadioSettings;)Landroid/widget/Spinner;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->sp_video_sharing:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$700(Lorg/cubepilot/herelinksettings/RadioSettings;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->showProgress(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/cubepilot/herelinksettings/RadioSettings;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->hideProgress()V

    return-void
.end method

.method static synthetic access$900(Lorg/cubepilot/herelinksettings/RadioSettings;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_air_signal_strength:Landroid/widget/TextView;

    return-object p0
.end method

.method private hideProgress()V
    .locals 2

    .line 363
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/RadioSettings$3;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RadioSettings$3;-><init>(Lorg/cubepilot/herelinksettings/RadioSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_ul_rate:Landroid/widget/TextView;

    .line 163
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09021f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_signal_strength:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_air_signal_strength:Landroid/widget/TextView;

    .line 165
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_flight_distance:Landroid/widget/TextView;

    .line 166
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_uplink_bw:Landroid/widget/TextView;

    .line 167
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09021d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_cal_state:Landroid/widget/TextView;

    .line 168
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->sp_country_setting:Landroid/widget/Spinner;

    .line 169
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->sp_country_setting:Landroid/widget/Spinner;

    new-instance v1, Lorg/cubepilot/herelinksettings/RadioSettings$4;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RadioSettings$4;-><init>(Lorg/cubepilot/herelinksettings/RadioSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 186
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->sp_video_sharing:Landroid/widget/Spinner;

    .line 187
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->sp_video_sharing:Landroid/widget/Spinner;

    new-instance v1, Lorg/cubepilot/herelinksettings/RadioSettings$5;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RadioSettings$5;-><init>(Lorg/cubepilot/herelinksettings/RadioSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private setCountry(I)V
    .locals 3

    .line 215
    iget-boolean v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->bound:Z

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country Set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " From "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->radiostat:Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-virtual {v2}, Lorg/cubepilot/herelinksettings/RadioStatService;->getAuthCfg()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HereLinkSetting"

    .line 218
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->wifi_countries:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioSettings;->setWifiCountryCode(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->radiostat:Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-virtual {v0, p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->setRadioCountry(I)V

    return-void
.end method

.method public static setWifiCountryCode(Ljava/lang/String;)V
    .locals 7

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting Wifi CountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HereLinkSetting"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_0
    sget-object v0, Lorg/cubepilot/herelinksettings/RadioSettings;->m_wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setCountryCode"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 230
    sget-object v2, Lorg/cubepilot/herelinksettings/RadioSettings;->m_wifiManager:Landroid/net/wifi/WifiManager;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 232
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showProgress(I)V
    .locals 2

    .line 367
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c001d

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 3

    .line 109
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 111
    iget-boolean v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->bound:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->radiostat:Lorg/cubepilot/herelinksettings/RadioStatService;

    iget v1, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->myid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/cubepilot/herelinksettings/RadioStatService;->setActivity(ILorg/cubepilot/herelinksettings/RadioSettings;)I

    .line 113
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->bound:Z

    .line 116
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 10

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 88
    new-instance v5, Lorg/cubepilot/herelinksettings/RadioSettings$1;

    invoke-direct {v5, p0}, Lorg/cubepilot/herelinksettings/RadioSettings$1;-><init>(Lorg/cubepilot/herelinksettings/RadioSettings;)V

    .line 101
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->t:Ljava/util/Timer;

    .line 102
    iget-object v4, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->t:Ljava/util/Timer;

    const-wide/16 v6, 0x1f4

    const-wide/16 v8, 0x3e8

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 104
    iput-object p0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->instance:Lorg/cubepilot/herelinksettings/RadioSettings;

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 67
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lorg/cubepilot/herelinksettings/RadioSettings;->m_wifiManager:Landroid/net/wifi/WifiManager;

    .line 68
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->initViews()V

    .line 69
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->hideProgress()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->bound:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings;->bound:Z

    .line 78
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
