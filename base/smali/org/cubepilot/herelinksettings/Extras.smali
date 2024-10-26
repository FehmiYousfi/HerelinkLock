.class public Lorg/cubepilot/herelinksettings/Extras;
.super Landroidx/fragment/app/Fragment;
.source "Extras.java"


# instance fields
.field m_DnegText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    .line 322
    iput-object v0, p0, Lorg/cubepilot/herelinksettings/Extras;->m_DnegText:Ljava/lang/String;

    return-void
.end method

.method private UpdatePairInfo()V
    .locals 8

    const-string v0, "persist.sys.dnegc2_name"

    const-string v1, "persist.sys.dnegc1_name"

    const-string v2, "persist.sys.dnegc2_info"

    const-string v3, "persist.sys.dnegc1_info"

    .line 356
    :try_start_0
    invoke-static {v3}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 357
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v4

    const v6, 0x7f090060

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 358
    :cond_0
    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 359
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v4

    const v6, 0x7f090061

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 361
    :cond_1
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090225

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 362
    invoke-static {v3}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Stored "

    const-string v6, "N/A"

    if-eqz v3, :cond_2

    move-object v3, v5

    goto :goto_0

    :cond_2
    move-object v3, v6

    :goto_0
    :try_start_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, ""

    if-eqz v3, :cond_3

    :try_start_2
    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v7

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f090226

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 366
    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method static synthetic access$000(Lorg/cubepilot/herelinksettings/Extras;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/Extras;->UpdatePairInfo()V

    return-void
.end method

.method private getMaxPWM()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "FunctionChannel"

    const-string v2, "MaxChannelValue"

    .line 318
    invoke-virtual {v0, v1, v2}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getMinPWM()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "FunctionChannel"

    const-string v2, "MinChannelValue"

    .line 309
    invoke-virtual {v0, v1, v2}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$null$0(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "persist.hl.routerip"

    invoke-static {p2, p0}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.hl.routerdev"

    invoke-static {p1, p0}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "persist.hl.routersrc"

    const-string p1, "192.168.144.11"

    .line 75
    invoke-static {p0, p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onStart$10(Landroid/view/View;)V
    .locals 0

    const-string p0, "QGCPAIRLOAD:2"

    .line 161
    invoke-static {p0}, Lorg/cubepilot/herelinksettings/RadioStatService;->sendCmd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onStart$3(Landroid/view/View;)V
    .locals 1

    const-string p0, "ctl.restart"

    const-string v0, "rild0"

    .line 136
    invoke-static {p0, v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onStart$4(Landroid/view/View;)V
    .locals 1

    const-string p0, "sys.bridge.config"

    const-string v0, "eth0"

    .line 140
    invoke-static {p0, v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onStart$5(Landroid/view/View;)V
    .locals 1

    const-string p0, "sys.bridge.config"

    const-string v0, "usb0"

    .line 143
    invoke-static {p0, v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onStart$6(Landroid/view/View;)V
    .locals 1

    const-string p0, "sys.bridge.config"

    const-string v0, "wlan0"

    .line 146
    invoke-static {p0, v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onStart$7(Landroid/view/View;)V
    .locals 1

    const-string p0, "sys.bridge.4addr"

    const-string v0, "wlan0"

    .line 149
    invoke-static {p0, v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onStart$8(Landroid/view/View;)V
    .locals 0

    const-string p0, "QGCPAIRLOAD:1"

    .line 153
    invoke-static {p0}, Lorg/cubepilot/herelinksettings/RadioStatService;->sendCmd(Ljava/lang/String;)V

    return-void
.end method

.method private saveDnegName(Ljava/lang/String;)V
    .locals 3

    .line 325
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Enter a name"

    .line 326
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 327
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 328
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 329
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 331
    new-instance v2, Lorg/cubepilot/herelinksettings/Extras$1;

    invoke-direct {v2, p0, v1, p1}, Lorg/cubepilot/herelinksettings/Extras$1;-><init>(Lorg/cubepilot/herelinksettings/Extras;Landroid/widget/EditText;Ljava/lang/String;)V

    const-string p1, "OK"

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    new-instance p1, Lorg/cubepilot/herelinksettings/Extras$2;

    invoke-direct {p1, p0}, Lorg/cubepilot/herelinksettings/Extras$2;-><init>(Lorg/cubepilot/herelinksettings/Extras;)V

    const-string v1, "Cancel"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setMinMaxPWM(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "FunctionChannel"

    const-string v3, "MinChannelValue"

    invoke-virtual {v0, v2, v3, p1}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "MaxChannelValue"

    invoke-virtual {v0, v2, p2, p1}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStart$1$Extras(Landroid/view/View;)V
    .locals 5

    .line 60
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;

    invoke-direct {p1, p0}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/Extras;->UpdatePairInfo()V

    .line 66
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0900b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "persist.hl.routerip"

    .line 67
    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "persist.hl.routerdev"

    .line 70
    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090066

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$FYXMY4dfjW8BOfY5NWpYtuyXkss;

    invoke-direct {v2, p1, v1}, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$FYXMY4dfjW8BOfY5NWpYtuyXkss;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget-object p1, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    const-string v0, "persist.multiple.videostream"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const v1, 0x7f0901b4

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    sget-object v2, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 86
    :cond_2
    sget-object p1, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    const-string v0, "persist.camera.keep.hdmi.on"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const v2, 0x7f0901b3

    if-eqz p1, :cond_3

    .line 87
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    sget-object v3, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 90
    :cond_3
    sget-object p1, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    const-string v0, "persist.fpv.encode.mode"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const v3, 0x7f0901b2

    if-eqz p1, :cond_4

    .line 91
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    sget-object v4, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "265"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 94
    :cond_4
    sget-object p1, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const v0, 0x7f090065

    const v4, 0x7f090064

    if-eqz p1, :cond_5

    .line 95
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 105
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onStart$11$Extras(Landroid/view/View;)V
    .locals 0

    const-string p1, "QGCPAIRSAVE:2"

    .line 164
    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->sendCmd(Ljava/lang/String;)V

    const-string p1, "persist.sys.dnegc2_name"

    .line 165
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/Extras;->saveDnegName(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/Extras;->UpdatePairInfo()V

    return-void
.end method

.method public synthetic lambda$onStart$12$Extras(Landroid/view/View;)V
    .locals 3

    .line 171
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "An error occurred setting the remote value"

    if-eqz p1, :cond_0

    .line 173
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;

    invoke-direct {p1}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;-><init>()V

    const-string v2, "setprop persist.camera.keep.hdmi.on true"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 175
    :try_start_0
    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 176
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 184
    :cond_0
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;

    invoke-direct {p1}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;-><init>()V

    const-string v2, "setprop persist.camera.keep.hdmi.on false"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 186
    :try_start_1
    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 187
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onStart$13$Extras(Landroid/view/View;)V
    .locals 3

    .line 199
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "An error occurred setting the remote value"

    if-eqz p1, :cond_0

    .line 201
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;

    invoke-direct {p1}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;-><init>()V

    const-string v2, "setprop persist.fpv.encode.mode 265"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 203
    :try_start_0
    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 204
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 212
    :cond_0
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;

    invoke-direct {p1}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;-><init>()V

    const-string v2, "setprop persist.fpv.encode.mode 264"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 214
    :try_start_1
    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 215
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onStart$14$Extras(Landroid/view/View;)V
    .locals 7

    .line 228
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "persist.multiple.videostream"

    const-string v2, "setprop"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;-><init>()V

    const-string v5, "setprop persist.multiple.videostream true"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 233
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "true"

    filled-new-array {v2, v1, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 236
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v3

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;-><init>()V

    const-string v5, "setprop persist.multiple.videostream false"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 246
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "false"

    filled-new-array {v2, v1, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 249
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    xor-int/lit8 v4, v0, 0x1

    goto :goto_0

    :catch_2
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    if-eqz v4, :cond_1

    .line 259
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 260
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "An error occurred setting the remote value"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 262
    :cond_1
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "A reboot is required for this to take effect both Air/Ground"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onStart$15$Extras(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .line 284
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/cubepilot/herelinksettings/Extras;->setMinMaxPWM(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 286
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onStart$2$Extras(Landroid/view/View;)V
    .locals 5

    .line 118
    :try_start_0
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 119
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/rc-backup.zip"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/rc-service/current_keyconfig"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, p1, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/rc-service/joystickconfig.ini"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, p1, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/rc-service/keyconfig.ini"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, p1, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, p1, v1

    .line 119
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/ZipFile;->addFiles(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 129
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Error creating/saving file"

    .line 130
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public synthetic lambda$onStart$9$Extras(Landroid/view/View;)V
    .locals 0

    const-string p1, "QGCPAIRSAVE:1"

    .line 156
    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->sendCmd(Ljava/lang/String;)V

    const-string p1, "persist.sys.dnegc1_name"

    .line 157
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/Extras;->saveDnegName(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/Extras;->UpdatePairInfo()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0033

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 55
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 57
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/Extras;->UpdatePairInfo()V

    .line 59
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$9YGdnERNb85PQkjF8SMIvok8g14;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$9YGdnERNb85PQkjF8SMIvok8g14;-><init>(Lorg/cubepilot/herelinksettings/Extras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$TEjRvA81-kN9YuZ8SbpLg4Sn8lg;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$TEjRvA81-kN9YuZ8SbpLg4Sn8lg;-><init>(Lorg/cubepilot/herelinksettings/Extras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$Jc4M3_s1QffMZ7GiPLoLxMQwnm0;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$Jc4M3_s1QffMZ7GiPLoLxMQwnm0;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$kI-2rF38b_Ia5iKTuF1AEmb3Nhs;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$kI-2rF38b_Ia5iKTuF1AEmb3Nhs;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$C_KMKHt7euvaXbSFFoS9U20-aco;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$C_KMKHt7euvaXbSFFoS9U20-aco;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$49Z_KVKDo5Cxencw2A3mov7E0BU;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$49Z_KVKDo5Cxencw2A3mov7E0BU;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$V829aczkAvmWtZI88b6uQwEsxvM;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$V829aczkAvmWtZI88b6uQwEsxvM;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$j2ft_ze3SqqS52tvZGFxfTMHuxM;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$j2ft_ze3SqqS52tvZGFxfTMHuxM;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$Sn0j-ckrfQuCdOeeQWt2FlrEVUY;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$Sn0j-ckrfQuCdOeeQWt2FlrEVUY;-><init>(Lorg/cubepilot/herelinksettings/Extras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$J_ZRXyPY13vDemrMC1TlAa5xo9Y;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$J_ZRXyPY13vDemrMC1TlAa5xo9Y;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$hAwXrxX9m1G4L3DtJI3iZ_BE6To;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$hAwXrxX9m1G4L3DtJI3iZ_BE6To;-><init>(Lorg/cubepilot/herelinksettings/Extras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 170
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$S3UxeWb_j5Y2HobIlUknpjZlfOk;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$S3UxeWb_j5Y2HobIlUknpjZlfOk;-><init>(Lorg/cubepilot/herelinksettings/Extras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$p0ZejHCEp7RR9RS4r1CTfzIKEtQ;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$p0ZejHCEp7RR9RS4r1CTfzIKEtQ;-><init>(Lorg/cubepilot/herelinksettings/Extras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 227
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$JilGbm2hlu76aAC9ULIU1Qz4JvI;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$JilGbm2hlu76aAC9ULIU1Qz4JvI;-><init>(Lorg/cubepilot/herelinksettings/Extras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 269
    :try_start_0
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/Extras;->getMinPWM()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 271
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "364"

    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_1
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 276
    :try_start_1
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/Extras;->getMaxPWM()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    .line 278
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "1684"

    .line 279
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_3
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/Extras;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$cXP-3b8hEBXxwrlCgA0JRBzMA2w;

    invoke-direct {v3, p0, v0, v1}, Lorg/cubepilot/herelinksettings/-$$Lambda$Extras$cXP-3b8hEBXxwrlCgA0JRBzMA2w;-><init>(Lorg/cubepilot/herelinksettings/Extras;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
