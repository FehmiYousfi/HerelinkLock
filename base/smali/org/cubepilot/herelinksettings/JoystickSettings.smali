.class public Lorg/cubepilot/herelinksettings/JoystickSettings;
.super Landroidx/fragment/app/Fragment;
.source "JoystickSettings.java"


# static fields
.field public static TAG:Ljava/lang/String; = "JoystickSettings"


# instance fields
.field public chout:[I

.field public dualcont:Z

.field public dualcontrollermain:Landroid/widget/Switch;

.field public dualcontrollermode:Landroid/widget/Switch;

.field public dualmain:Z

.field public dz:[I

.field public expo:[I

.field private js_calib:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

.field public js_cfg:Lorg/ini4j/Config;

.field private np_wheel_bus:Lcom/shawnlin/numberpicker/NumberPicker;

.field private np_wheel_channel:Lcom/shawnlin/numberpicker/NumberPicker;

.field public rev:[Z

.field private sb_axis_rz:Landroid/widget/SeekBar;

.field private sb_axis_rz2:Landroid/widget/SeekBar;

.field private sb_axis_wheel:Landroid/widget/SeekBar;

.field private sb_axis_wheel2:Landroid/widget/SeekBar;

.field private sb_axis_x:Landroid/widget/SeekBar;

.field private sb_axis_x2:Landroid/widget/SeekBar;

.field private sb_axis_y:Landroid/widget/SeekBar;

.field private sb_axis_y2:Landroid/widget/SeekBar;

.field private sb_axis_z:Landroid/widget/SeekBar;

.field private sb_axis_z2:Landroid/widget/SeekBar;

.field private sb_o1:Landroid/widget/SeekBar;

.field private sb_o10:Landroid/widget/SeekBar;

.field private sb_o11:Landroid/widget/SeekBar;

.field private sb_o12:Landroid/widget/SeekBar;

.field private sb_o13:Landroid/widget/SeekBar;

.field private sb_o14:Landroid/widget/SeekBar;

.field private sb_o15:Landroid/widget/SeekBar;

.field private sb_o16:Landroid/widget/SeekBar;

.field private sb_o17:Landroid/widget/SeekBar;

.field private sb_o18:Landroid/widget/SeekBar;

.field private sb_o19:Landroid/widget/SeekBar;

.field private sb_o2:Landroid/widget/SeekBar;

.field private sb_o20:Landroid/widget/SeekBar;

.field private sb_o21:Landroid/widget/SeekBar;

.field private sb_o22:Landroid/widget/SeekBar;

.field private sb_o23:Landroid/widget/SeekBar;

.field private sb_o24:Landroid/widget/SeekBar;

.field private sb_o25:Landroid/widget/SeekBar;

.field private sb_o26:Landroid/widget/SeekBar;

.field private sb_o27:Landroid/widget/SeekBar;

.field private sb_o28:Landroid/widget/SeekBar;

.field private sb_o29:Landroid/widget/SeekBar;

.field private sb_o3:Landroid/widget/SeekBar;

.field private sb_o30:Landroid/widget/SeekBar;

.field private sb_o31:Landroid/widget/SeekBar;

.field private sb_o32:Landroid/widget/SeekBar;

.field private sb_o4:Landroid/widget/SeekBar;

.field private sb_o5:Landroid/widget/SeekBar;

.field private sb_o6:Landroid/widget/SeekBar;

.field private sb_o7:Landroid/widget/SeekBar;

.field private sb_o8:Landroid/widget/SeekBar;

.field private sb_o9:Landroid/widget/SeekBar;

.field private spin_ipaddr_adpater:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public throttleCenterZero:Z

.field timer:Ljava/util/Timer;

.field private txt_cal_state:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [Z

    .line 99
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    new-array v1, v0, [I

    .line 100
    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dz:[I

    new-array v0, v0, [I

    .line 101
    fill-array-data v0, :array_2

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->expo:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 102
    fill-array-data v0, :array_3

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->chout:[I

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcont:Z

    .line 104
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualmain:Z

    .line 141
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->timer:Ljava/util/Timer;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static CalcExpo(FF)F
    .locals 6

    const/high16 v0, -0x3d380000    # -100.0f

    div-float/2addr p1, v0

    neg-float v0, p1

    float-to-double v0, v0

    float-to-double v2, p0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 1041
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p1, v2

    mul-float/2addr p1, p0

    float-to-double p0, p1

    add-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method private PopulateData(Ljava/util/List;[Landroid/widget/SeekBar;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[",
            "Landroid/widget/SeekBar;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x1f

    if-gt v2, v3, :cond_2

    .line 1021
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 1022
    aget-object v3, p2, v2

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 1024
    :cond_0
    aget-object v3, p2, v2

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1025
    aget-object v3, p2, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1026
    :cond_1
    aget-object v3, p2, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v5, v4

    const-wide v7, 0x4076c00000000000L    # 364.0

    const-wide v9, 0x409a500000000000L    # 1684.0

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    invoke-static/range {v5 .. v14}, Lorg/cubepilot/herelinksettings/JoystickSettings;->map(DDDDD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private SetAuxChannelBounds(II)V
    .locals 2

    .line 812
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->chout:[I

    invoke-direct {p0, p2}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getAuxChannel(I)I

    move-result v1

    aput v1, v0, p2

    .line 813
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/shawnlin/numberpicker/NumberPicker;

    const/4 v0, 0x0

    .line 814
    invoke-virtual {p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setMinValue(I)V

    const/16 v0, 0x20

    .line 815
    invoke-virtual {p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 816
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->chout:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setValue(I)V

    .line 818
    new-instance v0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$CdQrS9g7LUulgg-n-0XICOqLlwM;

    invoke-direct {v0, p0, p2}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$CdQrS9g7LUulgg-n-0XICOqLlwM;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;I)V

    invoke-virtual {p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setOnValueChangedListener(Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;)V

    return-void
.end method

.method private SetDeadZoneBounds(IIILjava/lang/String;I)V
    .locals 2

    .line 855
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dz:[I

    invoke-static {p4}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getDeadZone(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, p5

    .line 856
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/shawnlin/numberpicker/NumberPicker;

    .line 857
    invoke-virtual {p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->setMinValue(I)V

    .line 858
    invoke-virtual {p1, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 859
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dz:[I

    aget p2, p2, p5

    invoke-virtual {p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->setValue(I)V

    .line 861
    new-instance p2, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$MMwo7kHiO4PNOvW7ne_G_Br6yrA;

    invoke-direct {p2, p0, p5, p4}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$MMwo7kHiO4PNOvW7ne_G_Br6yrA;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->setOnValueChangedListener(Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;)V

    return-void
.end method

.method private SetExpoBounds(IIILjava/lang/String;I)V
    .locals 2

    .line 873
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->expo:[I

    invoke-static {p4}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getExponential(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, p5

    .line 874
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/shawnlin/numberpicker/NumberPicker;

    .line 875
    invoke-virtual {p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->setMinValue(I)V

    .line 876
    invoke-virtual {p1, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 877
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->expo:[I

    aget p2, p2, p5

    invoke-virtual {p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->setValue(I)V

    .line 879
    new-instance p2, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rwNnzLJxLwhJZmfqV65QELo8SZg;

    invoke-direct {p2, p0, p5, p4}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rwNnzLJxLwhJZmfqV65QELo8SZg;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->setOnValueChangedListener(Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/cubepilot/herelinksettings/JoystickSettings;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->updateAuxChannels()V

    return-void
.end method

.method static synthetic access$100(Lorg/cubepilot/herelinksettings/JoystickSettings;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->txt_cal_state:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/cubepilot/herelinksettings/JoystickSettings;)Lorg/cubepilot/herelinksettings/JoystickCalibrator;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->js_calib:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    return-object p0
.end method

.method static synthetic access$300(Lorg/cubepilot/herelinksettings/JoystickSettings;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->spin_ipaddr_adpater:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method private getAuxChannel(I)I
    .locals 5

    const-string v0, "MapConfig"

    const/4 v1, 0x0

    .line 825
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 828
    :cond_0
    new-instance v3, Lorg/ini4j/Ini;

    invoke-direct {v3, v2}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "outputch"

    invoke-virtual {v3, v2, v4}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sbusout"

    invoke-virtual {v3, p1, v0}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 831
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "2"

    .line 833
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 834
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x10

    return p1

    .line 835
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 837
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 839
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static getCalibrated()Z
    .locals 3

    .line 1202
    :try_start_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 1203
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1205
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "Basic"

    const-string v2, "calibrated"

    .line 1206
    invoke-virtual {v0, v1, v2}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static getDeadZone(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1151
    :try_start_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v1

    .line 1152
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1155
    :cond_0
    new-instance v1, Lorg/ini4j/Ini;

    invoke-direct {v1, v2}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v2, "AxisDeadband"

    .line 1156
    invoke-virtual {v1, p0, v2}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 1159
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit8 p0, p0, 0x3c
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1161
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private getDualControllerMain()Z
    .locals 4

    const/4 v0, 0x0

    .line 769
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 772
    :cond_0
    new-instance v2, Lorg/ini4j/Ini;

    invoke-direct {v2, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "Additional"

    const-string v3, "DualSlave"

    .line 773
    invoke-virtual {v2, v1, v3}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 774
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 776
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 778
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private getDualControllerMode()Z
    .locals 4

    const/4 v0, 0x0

    .line 791
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 794
    :cond_0
    new-instance v2, Lorg/ini4j/Ini;

    invoke-direct {v2, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "Additional"

    const-string v3, "DualController"

    .line 795
    invoke-virtual {v2, v1, v3}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 796
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 798
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 800
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getExponential(Ljava/lang/String;)F
    .locals 3

    const/4 v0, 0x0

    .line 1133
    :try_start_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v1

    .line 1134
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1137
    :cond_0
    new-instance v1, Lorg/ini4j/Ini;

    invoke-direct {v1, v2}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v2, "AxisExpo"

    .line 1138
    invoke-virtual {v1, p0, v2}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 1141
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v0, -0x3d380000    # -100.0f

    mul-float/2addr p0, v0

    return p0

    :catch_0
    move-exception p0

    .line 1143
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getJoystickConfigPath()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1045
    new-instance v0, Lorg/ini4j/Ini;

    new-instance v1, Ljava/io/File;

    const-string v2, "/tmp/rc_service_config.ini"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "General"

    const-string v3, "ConfigDir"

    invoke-virtual {v0, v2, v3}, Lorg/ini4j/Ini;->fetch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "JoystickconfigName"

    .line 1047
    invoke-virtual {v0, v2, v3}, Lorg/ini4j/Ini;->fetch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMode()I
    .locals 4

    const/4 v0, 0x2

    .line 1225
    :try_start_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v1

    .line 1226
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1229
    :cond_0
    new-instance v1, Lorg/ini4j/Ini;

    invoke-direct {v1, v2}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v2, "Basic"

    const-string v3, "transmitterMode"

    .line 1230
    invoke-virtual {v1, v2, v3}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1232
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getRev(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 1250
    :try_start_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v1

    .line 1251
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1254
    :cond_0
    new-instance v1, Lorg/ini4j/Ini;

    invoke-direct {v1, v2}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 1255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Axis"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "Calibration"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AxisRev"

    invoke-virtual {v1, p0, v2}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1257
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private getSBUSInputs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/io/File;

    const-string v1, "/tmp/sbusaux_values"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 346
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 348
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 349
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 351
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, ","

    .line 352
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 353
    array-length v4, v0

    const/16 v5, 0x1f

    if-ge v4, v5, :cond_2

    return-object v1

    .line 356
    :cond_2
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 357
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 360
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 366
    sget-object v2, Lorg/cubepilot/herelinksettings/JoystickSettings;->TAG:Ljava/lang/String;

    const-string v3, "failed to open sbusaux_values file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method private getSBUSOutputs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/io/File;

    const-string v1, "/tmp/sbus_values"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 316
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 318
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 319
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 321
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, ","

    .line 322
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 323
    array-length v4, v0

    const/16 v5, 0x1f

    if-ge v4, v5, :cond_2

    return-object v1

    .line 326
    :cond_2
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 327
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 336
    sget-object v2, Lorg/cubepilot/herelinksettings/JoystickSettings;->TAG:Ljava/lang/String;

    const-string v3, "failed to open sbus_values file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public static getThrottleCenterZero()Z
    .locals 4

    const/4 v0, 0x0

    .line 1075
    :try_start_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v1

    .line 1076
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1079
    :cond_0
    new-instance v1, Lorg/ini4j/Ini;

    invoke-direct {v1, v2}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v2, "Additional"

    const-string v3, "CenterZeroSupport"

    .line 1080
    invoke-virtual {v1, v2, v3}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1082
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getUDPIpAddress()Ljava/lang/String;
    .locals 4

    const-string v0, "192.168.0.10"

    .line 1110
    :try_start_0
    new-instance v1, Lorg/ini4j/Ini;

    new-instance v2, Ljava/io/File;

    const-string v3, "/tmp/rc_service_config.ini"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v2, "UdpConfig"

    const-string v3, "IpAddress"

    .line 1111
    invoke-virtual {v1, v2, v3}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1112
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    .line 1116
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getWheelAccumulator()Z
    .locals 4

    const/4 v0, 0x0

    .line 1188
    :try_start_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v1

    .line 1189
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1192
    :cond_0
    new-instance v1, Lorg/ini4j/Ini;

    invoke-direct {v1, v2}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v2, "Additional"

    const-string v3, "WheelAccumulator"

    .line 1193
    invoke-virtual {v1, v2, v3}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1195
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getWheelBus()I
    .locals 4

    .line 1278
    :try_start_0
    new-instance v0, Lorg/ini4j/Ini;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "scrollwheel"

    const-string v2, "sbus"

    .line 1279
    invoke-virtual {v0, v1, v2}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public static getWheelChannel()I
    .locals 5

    const/4 v0, 0x5

    .line 1264
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 1267
    :cond_0
    new-instance v2, Lorg/ini4j/Ini;

    invoke-direct {v2, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 1268
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getWheelBus()I

    move-result v1

    const-string v3, "scrollwheel"

    const-string v4, "channel"

    .line 1269
    invoke-virtual {v2, v3, v4}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v1

    .line 1271
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private initViews()V
    .locals 11

    .line 416
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/JoystickSettings$5;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/JoystickSettings$5;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/JoystickSettings$6;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/JoystickSettings$6;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/JoystickSettings$7;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/JoystickSettings$7;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_x:Landroid/widget/SeekBar;

    .line 450
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_x:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$aKGRsZnqdPYvs2ysMd8l5QLx_BA;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$aKGRsZnqdPYvs2ysMd8l5QLx_BA;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 451
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_y:Landroid/widget/SeekBar;

    .line 452
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_y:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$ZCe_0RdtNR_UIbIV5_H1FHQV1hs;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$ZCe_0RdtNR_UIbIV5_H1FHQV1hs;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 453
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_z:Landroid/widget/SeekBar;

    .line 454
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_z:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$5DLuRqXYxj5skAf7dXL2-94cBRM;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$5DLuRqXYxj5skAf7dXL2-94cBRM;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 455
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_rz:Landroid/widget/SeekBar;

    .line 456
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_rz:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$uGJactXA9cItpH7DFQ1SyF1oM5k;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$uGJactXA9cItpH7DFQ1SyF1oM5k;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_wheel:Landroid/widget/SeekBar;

    .line 458
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_wheel:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$YKdg5qaUen_I-2phKpC0_8k4YdY;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$YKdg5qaUen_I-2phKpC0_8k4YdY;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 459
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_x2:Landroid/widget/SeekBar;

    .line 460
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_x2:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$0V-JdPt8bsEH5ffpnVmlWg09pfw;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$0V-JdPt8bsEH5ffpnVmlWg09pfw;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 461
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_y2:Landroid/widget/SeekBar;

    .line 462
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_y2:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$uXBy88Z1LHAnwO1aOlVGZWw9MKE;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$uXBy88Z1LHAnwO1aOlVGZWw9MKE;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_z2:Landroid/widget/SeekBar;

    .line 464
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_z2:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$lDJx1ZN4_LbAIQUCGcq3W4NQ14o;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$lDJx1ZN4_LbAIQUCGcq3W4NQ14o;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_rz2:Landroid/widget/SeekBar;

    .line 466
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_rz2:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$KSkzT0q6KKES-aEcZSp3IfC6ZB8;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$KSkzT0q6KKES-aEcZSp3IfC6ZB8;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 467
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_wheel2:Landroid/widget/SeekBar;

    .line 468
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_wheel2:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rQcXm2pKRkjU5Si1iqvazFKLdAc;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rQcXm2pKRkjU5Si1iqvazFKLdAc;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 469
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o1:Landroid/widget/SeekBar;

    .line 470
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o1:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a_dPBfKvAb4gUwUYe-RiomPzofE;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a_dPBfKvAb4gUwUYe-RiomPzofE;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 471
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o2:Landroid/widget/SeekBar;

    .line 472
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o2:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$0yHwhdoxBLhOgCnJnvwrI2G3Vpo;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$0yHwhdoxBLhOgCnJnvwrI2G3Vpo;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 473
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o3:Landroid/widget/SeekBar;

    .line 474
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o3:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$-WpCvS-1I7pM6lDXq-FRVKatHts;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$-WpCvS-1I7pM6lDXq-FRVKatHts;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o4:Landroid/widget/SeekBar;

    .line 476
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o4:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$9-SPMSG0Rnp4Zv0qnlHKbiUqr9U;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$9-SPMSG0Rnp4Zv0qnlHKbiUqr9U;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 477
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o5:Landroid/widget/SeekBar;

    .line 478
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o5:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$IDNQkcvC924TSas5CBCpmsUdapU;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$IDNQkcvC924TSas5CBCpmsUdapU;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 479
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o6:Landroid/widget/SeekBar;

    .line 480
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o6:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$5JfXA-oTP8koRtus4BUa25JgYvg;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$5JfXA-oTP8koRtus4BUa25JgYvg;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 481
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o7:Landroid/widget/SeekBar;

    .line 482
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o7:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a7gJu-kBKCNac9daQul7QTE7Obg;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a7gJu-kBKCNac9daQul7QTE7Obg;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 483
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o8:Landroid/widget/SeekBar;

    .line 484
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o8:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$xo_DNvYnxwukKxBmDCtiIr2k0FM;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$xo_DNvYnxwukKxBmDCtiIr2k0FM;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o9:Landroid/widget/SeekBar;

    .line 486
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o9:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$xZtGpmt7Az2CJ7swsP74RVxjedU;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$xZtGpmt7Az2CJ7swsP74RVxjedU;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o10:Landroid/widget/SeekBar;

    .line 488
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o10:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$g6L7_OaTOyxpWF-nbavawjk5AR8;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$g6L7_OaTOyxpWF-nbavawjk5AR8;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 489
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o11:Landroid/widget/SeekBar;

    .line 490
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o11:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$khIO15tXvHNTjQ32QX2x-hJWAcg;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$khIO15tXvHNTjQ32QX2x-hJWAcg;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 491
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o12:Landroid/widget/SeekBar;

    .line 492
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o12:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$SV3xP9GrIYTjCWnLM0p87YazxBY;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$SV3xP9GrIYTjCWnLM0p87YazxBY;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 493
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o13:Landroid/widget/SeekBar;

    .line 494
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o13:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$TLuX598itf3m6Rnm05Pcl-xMNt0;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$TLuX598itf3m6Rnm05Pcl-xMNt0;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o14:Landroid/widget/SeekBar;

    .line 496
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o14:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$DgExo24ksD046jA5D_uuBQSN7yQ;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$DgExo24ksD046jA5D_uuBQSN7yQ;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 497
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o15:Landroid/widget/SeekBar;

    .line 498
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o15:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$AtQHx3aSfVBG4EB1g2pvPzWRSCs;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$AtQHx3aSfVBG4EB1g2pvPzWRSCs;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o16:Landroid/widget/SeekBar;

    .line 500
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o16:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$cogm7aGq8Sz4y_TV4Ij4SQGBMMM;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$cogm7aGq8Sz4y_TV4Ij4SQGBMMM;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 502
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o17:Landroid/widget/SeekBar;

    .line 503
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o17:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$q35MKefKXQ5xpKAI7Wizmla8uqA;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$q35MKefKXQ5xpKAI7Wizmla8uqA;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 504
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o18:Landroid/widget/SeekBar;

    .line 505
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o18:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$CuEb2EIOLR72QIdS2Ih3ec-nSJE;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$CuEb2EIOLR72QIdS2Ih3ec-nSJE;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 506
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o19:Landroid/widget/SeekBar;

    .line 507
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o19:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$OO_0z-IhyzjMxrf3ESMYnPBUTyY;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$OO_0z-IhyzjMxrf3ESMYnPBUTyY;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 508
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o20:Landroid/widget/SeekBar;

    .line 509
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o20:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$fU-4GoE0y9TW7ancBdZMMlfB7iA;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$fU-4GoE0y9TW7ancBdZMMlfB7iA;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 510
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o21:Landroid/widget/SeekBar;

    .line 511
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o21:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$AvyLZ2qaufkZQ5MpA66IH8b0TdI;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$AvyLZ2qaufkZQ5MpA66IH8b0TdI;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 512
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o22:Landroid/widget/SeekBar;

    .line 513
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o22:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$qqRS7Gg7o5rcWLub5xvau6CIGOc;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$qqRS7Gg7o5rcWLub5xvau6CIGOc;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 514
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o23:Landroid/widget/SeekBar;

    .line 515
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o23:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$azxaIwhGGfL4PgF9rdvB1y_LlVQ;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$azxaIwhGGfL4PgF9rdvB1y_LlVQ;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 516
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o24:Landroid/widget/SeekBar;

    .line 517
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o24:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$bK-gXhmSXFLD8IratZdzcE5NXEg;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$bK-gXhmSXFLD8IratZdzcE5NXEg;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 518
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o25:Landroid/widget/SeekBar;

    .line 519
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o25:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$vSkMJ4-4oWreZNnHiTHZRgGrWbE;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$vSkMJ4-4oWreZNnHiTHZRgGrWbE;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 520
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o26:Landroid/widget/SeekBar;

    .line 521
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o26:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$pZl_xZzr2922-LdjdhHgnjatNhs;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$pZl_xZzr2922-LdjdhHgnjatNhs;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 522
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o27:Landroid/widget/SeekBar;

    .line 523
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o27:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$7sCUwirIMDa-VRXAHKZysUwd61A;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$7sCUwirIMDa-VRXAHKZysUwd61A;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 524
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o28:Landroid/widget/SeekBar;

    .line 525
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o28:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$6L0mXul4m9fO9UgLw-frOOolgLE;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$6L0mXul4m9fO9UgLw-frOOolgLE;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 526
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o29:Landroid/widget/SeekBar;

    .line 527
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o29:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rrDGhZr7kqLlE5Dh7YHszh_jhXU;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rrDGhZr7kqLlE5Dh7YHszh_jhXU;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 529
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o30:Landroid/widget/SeekBar;

    .line 530
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o30:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$pH98f9_WyrWKqnyN2hNbVniEDgA;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$pH98f9_WyrWKqnyN2hNbVniEDgA;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 531
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o31:Landroid/widget/SeekBar;

    .line 532
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o31:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$9_urqL4veSU3akLx2PbP28ZCAnc;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$9_urqL4veSU3akLx2PbP28ZCAnc;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 533
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o32:Landroid/widget/SeekBar;

    .line 534
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o32:Landroid/widget/SeekBar;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$SXrcEuBNa6ZqzTCv7FB-22Wsqyg;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$SXrcEuBNa6ZqzTCv7FB-22Wsqyg;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 538
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 540
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901af

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermode:Landroid/widget/Switch;

    .line 541
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermode:Landroid/widget/Switch;

    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getDualControllerMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 542
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getDualControllerMode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcont:Z

    .line 544
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0901b0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermain:Landroid/widget/Switch;

    .line 545
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermain:Landroid/widget/Switch;

    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getDualControllerMain()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 546
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getDualControllerMain()Z

    move-result v0

    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualmain:Z

    .line 548
    iget-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualmain:Z

    const/4 v7, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcont:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 551
    :cond_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermode:Landroid/widget/Switch;

    new-instance v1, Lorg/cubepilot/herelinksettings/JoystickSettings$8;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/JoystickSettings$8;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 562
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermain:Landroid/widget/Switch;

    new-instance v1, Lorg/cubepilot/herelinksettings/JoystickSettings$9;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/JoystickSettings$9;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 571
    iget-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcont:Z

    if-nez v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setVisibility(I)V

    .line 575
    :cond_1
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->updatemainview()V

    .line 576
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$R8WDQ5ruGP7b3psxu5r1vcXxDXs;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$R8WDQ5ruGP7b3psxu5r1vcXxDXs;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$-K2oBuy9bF8ujgCH0w4JcOwX4LY;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$-K2oBuy9bF8ujgCH0w4JcOwX4LY;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    invoke-static {v7}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getRev(I)Z

    move-result v1

    aput-boolean v1, v0, v7

    .line 604
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    aget-boolean v0, v0, v7

    const v1, 0x7f090212

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    .line 605
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 607
    :cond_2
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$5kGPoFwiXdcvyBwxLHb3Yp3yOG0;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$5kGPoFwiXdcvyBwxLHb3Yp3yOG0;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    invoke-static {v8}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getRev(I)Z

    move-result v1

    aput-boolean v1, v0, v8

    .line 618
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    aget-boolean v0, v0, v8

    const v1, 0x7f090214

    if-eqz v0, :cond_3

    .line 619
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 621
    :cond_3
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$U_lHg4AIVNpog2L6u566igIKGFI;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$U_lHg4AIVNpog2L6u566igIKGFI;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v9, 0x2

    invoke-static {v9}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getRev(I)Z

    move-result v1

    aput-boolean v1, v0, v9

    .line 632
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    aget-boolean v0, v0, v9

    const v1, 0x7f090216

    if-eqz v0, :cond_4

    .line 633
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 635
    :cond_4
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$e7uxnwFE4G1AVt13DW7DZdKd8N0;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$e7uxnwFE4G1AVt13DW7DZdKd8N0;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v10, 0x3

    invoke-static {v10}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getRev(I)Z

    move-result v1

    aput-boolean v1, v0, v10

    .line 646
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    aget-boolean v0, v0, v10

    const v1, 0x7f09020e

    if-eqz v0, :cond_5

    .line 647
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 649
    :cond_5
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$qS_LIMBZVSsx5EjjMsFFiGASB_Y;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$qS_LIMBZVSsx5EjjMsFFiGASB_Y;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    invoke-static {v6}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getRev(I)Z

    move-result v1

    aput-boolean v1, v0, v6

    .line 660
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    aget-boolean v0, v0, v6

    const v1, 0x7f090210

    if-eqz v0, :cond_6

    .line 661
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 663
    :cond_6
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$sOOazsG5cc2CHBYPSxdROL8OpWU;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$sOOazsG5cc2CHBYPSxdROL8OpWU;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$yPeJfraaKuu_EGAfcU04Utj1CKc;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$yPeJfraaKuu_EGAfcU04Utj1CKc;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f090126

    const/16 v2, -0x64

    const/16 v3, 0x64

    const/4 v5, 0x0

    const-string v4, "Axis0Calibration"

    move-object v0, p0

    .line 681
    invoke-direct/range {v0 .. v5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetExpoBounds(IIILjava/lang/String;I)V

    const v1, 0x7f090128

    const/4 v5, 0x1

    const-string v4, "Axis1Calibration"

    .line 682
    invoke-direct/range {v0 .. v5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetExpoBounds(IIILjava/lang/String;I)V

    const v1, 0x7f09012a

    const/4 v5, 0x2

    const-string v4, "Axis2Calibration"

    .line 683
    invoke-direct/range {v0 .. v5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetExpoBounds(IIILjava/lang/String;I)V

    const v1, 0x7f090122

    const/4 v5, 0x3

    const-string v4, "Axis3Calibration"

    .line 684
    invoke-direct/range {v0 .. v5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetExpoBounds(IIILjava/lang/String;I)V

    const v1, 0x7f090124

    const/4 v5, 0x4

    const-string v4, "Axis4Calibration"

    .line 685
    invoke-direct/range {v0 .. v5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetExpoBounds(IIILjava/lang/String;I)V

    const v1, 0x7f09011c

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v4, "Axis0Calibration"

    .line 687
    invoke-direct/range {v0 .. v5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetDeadZoneBounds(IIILjava/lang/String;I)V

    const v1, 0x7f09011e

    const/4 v5, 0x1

    const-string v4, "Axis1Calibration"

    .line 688
    invoke-direct/range {v0 .. v5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetDeadZoneBounds(IIILjava/lang/String;I)V

    const v1, 0x7f090120

    const/4 v5, 0x2

    const-string v4, "Axis2Calibration"

    .line 689
    invoke-direct/range {v0 .. v5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetDeadZoneBounds(IIILjava/lang/String;I)V

    const v1, 0x7f090118

    const/4 v5, 0x3

    const-string v4, "Axis3Calibration"

    .line 690
    invoke-direct/range {v0 .. v5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetDeadZoneBounds(IIILjava/lang/String;I)V

    const v1, 0x7f09011a

    const/4 v5, 0x4

    const-string v4, "Axis4Calibration"

    .line 691
    invoke-direct/range {v0 .. v5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetDeadZoneBounds(IIILjava/lang/String;I)V

    const v0, 0x7f090131

    .line 693
    invoke-direct {p0, v0, v7}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetAuxChannelBounds(II)V

    const v0, 0x7f090133

    .line 694
    invoke-direct {p0, v0, v8}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetAuxChannelBounds(II)V

    const v0, 0x7f090135

    .line 695
    invoke-direct {p0, v0, v9}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetAuxChannelBounds(II)V

    const v0, 0x7f09012d

    .line 696
    invoke-direct {p0, v0, v10}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetAuxChannelBounds(II)V

    const v0, 0x7f09012f

    .line 697
    invoke-direct {p0, v0, v6}, Lorg/cubepilot/herelinksettings/JoystickSettings;->SetAuxChannelBounds(II)V

    .line 699
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 701
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getUDPIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "192.168.144.10"

    .line 702
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Default"

    .line 703
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0c0066

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->spin_ipaddr_adpater:Landroid/widget/ArrayAdapter;

    .line 705
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->spin_ipaddr_adpater:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 706
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->spin_ipaddr_adpater:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 707
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->spin_ipaddr_adpater:Landroid/widget/ArrayAdapter;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getUDPIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 708
    new-instance v1, Lorg/cubepilot/herelinksettings/JoystickSettings$10;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/JoystickSettings$10;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 727
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shawnlin/numberpicker/NumberPicker;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->np_wheel_channel:Lcom/shawnlin/numberpicker/NumberPicker;

    .line 742
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->np_wheel_channel:Lcom/shawnlin/numberpicker/NumberPicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->setMinValue(I)V

    .line 746
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->np_wheel_channel:Lcom/shawnlin/numberpicker/NumberPicker;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 747
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->np_wheel_channel:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getWheelChannel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->setValue(I)V

    .line 749
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shawnlin/numberpicker/NumberPicker;

    .line 750
    invoke-virtual {v0, v8}, Lcom/shawnlin/numberpicker/NumberPicker;->setMinValue(I)V

    .line 751
    invoke-virtual {v0, v6}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 752
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->setValue(I)V

    .line 754
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a8TDd0tPe8pgPgVvY8APvEWasac;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a8TDd0tPe8pgPgVvY8APvEWasac;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->txt_cal_state:Landroid/widget/TextView;

    .line 757
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->js_calib:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->getSettingsExist()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getCalibrated()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 758
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->txt_cal_state:Landroid/widget/TextView;

    const v1, 0x7f10005a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 759
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->txt_cal_state:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 761
    :cond_7
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->txt_cal_state:Landroid/widget/TextView;

    const v1, 0x7f10005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 762
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->txt_cal_state:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$initViews$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$10(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$11(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$12(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$13(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$14(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$15(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$16(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$17(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$18(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$19(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$20(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$21(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$22(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$23(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$24(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$25(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$26(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$27(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$28(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$29(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$30(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$31(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$32(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$33(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$34(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$35(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$36(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$37(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$38(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$39(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$40(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$41(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$6(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initViews$9(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static map(DDDDD)D
    .locals 0

    sub-double/2addr p0, p2

    sub-double/2addr p8, p6

    mul-double/2addr p0, p8

    sub-double/2addr p4, p2

    div-double/2addr p0, p4

    add-double/2addr p0, p6

    return-wide p0
.end method

.method private saveChannelOutputs()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 928
    :try_start_0
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->chout:[I

    aget v2, v2, v0

    if-le v2, v1, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->chout:[I

    aget v3, v3, v0

    if-le v3, v1, :cond_1

    iget-object v3, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->chout:[I

    aget v3, v3, v0

    sub-int/2addr v3, v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->chout:[I

    aget v3, v1, v0

    :goto_2
    invoke-direct {p0, v0, v2, v3}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setAuxChannel(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 930
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private saveDeadBand()V
    .locals 4

    .line 938
    :try_start_0
    new-instance v0, Lorg/ini4j/Ini;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "Additional"

    const-string v2, "Deadband"

    const/4 v3, 0x1

    .line 940
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 941
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 943
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static saveRevSettings([Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1051
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 1052
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1056
    :cond_0
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 1058
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Axis"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Calibration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-boolean v4, p0, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "AxisRev"

    invoke-virtual {v0, v3, v5, v4}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method

.method private setAuxChannel(III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    new-instance v0, Lorg/ini4j/Ini;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "sbusout"

    invoke-virtual {v0, v1, v3, p2}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 848
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "inputch"

    invoke-virtual {v0, p2, v3, v1}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 849
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "outputch"

    invoke-virtual {v0, p1, p3, p2}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 851
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method

.method public static setCalibrated(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1215
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 1216
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1218
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 1219
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v2, "Basic"

    const-string v3, "calibrated"

    invoke-virtual {v0, v2, v3, p0}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1220
    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method

.method public static setDeadZone(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1167
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 1168
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1170
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    mul-int/lit8 p1, p1, 0x3c

    .line 1171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "AxisDeadband"

    invoke-virtual {v0, p0, v2, p1}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1172
    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    .line 1174
    sget-object p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/ini4j/Ini;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setDualControllerMain(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    new-instance v0, Lorg/ini4j/Ini;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    xor-int/lit8 p1, p1, 0x1

    .line 785
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "Additional"

    const-string v2, "DualSlave"

    invoke-virtual {v0, v1, v2, p1}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 786
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method

.method private setDualControllerMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    new-instance v0, Lorg/ini4j/Ini;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 807
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "Additional"

    const-string v2, "DualController"

    invoke-virtual {v0, v1, v2, p1}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 808
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method

.method public static setExponential(Ljava/lang/String;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 1123
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1125
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const/high16 v2, -0x3d380000    # -100.0f

    div-float/2addr p1, v2

    .line 1126
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "AxisExpo"

    invoke-virtual {v0, p0, v2, p1}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1127
    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method

.method public static setMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1239
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 1240
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1242
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 1243
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "Basic"

    const-string v3, "transmitterMode"

    invoke-virtual {v0, v2, v3, p0}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1244
    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method

.method private setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 950
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "set"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 952
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    .line 953
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 957
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 955
    throw p1
.end method

.method public static setThrottleCenterZero(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 1065
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1067
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 1068
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v2, "Additional"

    const-string v3, "CenterZeroSupport"

    invoke-virtual {v0, v2, v3, p0}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x0

    .line 1069
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v3, "ThrottleMode"

    invoke-virtual {v0, v2, v3, p0}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1070
    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method

.method public static setUDPIpAddress(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Default"

    .line 1088
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "192.168.0.10"

    .line 1091
    :cond_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getUDPIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1094
    :cond_1
    invoke-static {p0}, Lorg/cubepilot/herelinksettings/util/ValidateIPV4;->isValidIPV4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    new-instance v0, Lorg/ini4j/Ini;

    new-instance v1, Ljava/io/File;

    const-string v2, "/tmp/rc_service_config.ini"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "UdpConfig"

    const-string v2, "IpAddress"

    .line 1097
    invoke-virtual {v0, v1, v2, p0}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1099
    new-instance p0, Ljava/io/File;

    const-string v1, "/data/oem/etc/"

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 1100
    new-instance p0, Ljava/io/File;

    const-string v1, "/data/oem/etc/rc_service_config_optimus.ini"

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    .line 1102
    sget-object p0, Lorg/cubepilot/herelinksettings/MainActivity;->mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;

    const/4 v0, 0x0

    const-string v1, "A restart is required after an IP Change"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1104
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public static setWheelAccumulator(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1178
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 1179
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1181
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 1182
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v2, "Additional"

    const-string v3, "WheelAccumulator"

    invoke-virtual {v0, v2, v3, p0}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1183
    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method

.method private updateAuxChannels()V
    .locals 18

    move-object/from16 v0, p0

    .line 988
    invoke-direct/range {p0 .. p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getSBUSOutputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f

    if-eqz v1, :cond_0

    .line 990
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_0

    const/16 v8, 0x20

    new-array v8, v8, [Landroid/widget/SeekBar;

    .line 991
    iget-object v9, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o1:Landroid/widget/SeekBar;

    aput-object v9, v8, v6

    iget-object v9, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o2:Landroid/widget/SeekBar;

    aput-object v9, v8, v5

    iget-object v9, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o3:Landroid/widget/SeekBar;

    aput-object v9, v8, v4

    iget-object v9, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o4:Landroid/widget/SeekBar;

    aput-object v9, v8, v3

    iget-object v9, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o5:Landroid/widget/SeekBar;

    aput-object v9, v8, v2

    const/4 v9, 0x5

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o6:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o7:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o8:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x8

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o9:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x9

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o10:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0xa

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o11:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0xb

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o12:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0xc

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o13:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0xd

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o14:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0xe

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o15:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0xf

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o16:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x10

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o17:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x11

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o18:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x12

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o19:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x13

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o20:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x14

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o21:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x15

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o22:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x16

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o23:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x17

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o24:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x18

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o25:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x19

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o26:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x1a

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o27:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x1b

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o28:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x1c

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o29:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x1d

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o30:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    const/16 v9, 0x1e

    iget-object v10, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o31:Landroid/widget/SeekBar;

    aput-object v10, v8, v9

    iget-object v9, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_o32:Landroid/widget/SeekBar;

    aput-object v9, v8, v7

    invoke-direct {v0, v1, v8}, Lorg/cubepilot/herelinksettings/JoystickSettings;->PopulateData(Ljava/util/List;[Landroid/widget/SeekBar;)V

    .line 1006
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getSBUSInputs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1008
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_1

    .line 1009
    iget-object v7, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_x2:Landroid/widget/SeekBar;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v8, v6

    const-wide v10, 0x4076c00000000000L    # 364.0

    const-wide v12, 0x409a500000000000L    # 1684.0

    const-wide/16 v14, 0x0

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    invoke-static/range {v8 .. v17}, Lorg/cubepilot/herelinksettings/JoystickSettings;->map(DDDDD)D

    move-result-wide v8

    double-to-int v6, v8

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1010
    iget-object v6, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_y2:Landroid/widget/SeekBar;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v7, v5

    const-wide v9, 0x4076c00000000000L    # 364.0

    const-wide v11, 0x409a500000000000L    # 1684.0

    const-wide/16 v13, 0x0

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    invoke-static/range {v7 .. v16}, Lorg/cubepilot/herelinksettings/JoystickSettings;->map(DDDDD)D

    move-result-wide v7

    double-to-int v5, v7

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1011
    iget-object v5, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_z2:Landroid/widget/SeekBar;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v6, v4

    const-wide v8, 0x4076c00000000000L    # 364.0

    const-wide v10, 0x409a500000000000L    # 1684.0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    invoke-static/range {v6 .. v15}, Lorg/cubepilot/herelinksettings/JoystickSettings;->map(DDDDD)D

    move-result-wide v6

    double-to-int v4, v6

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1012
    iget-object v4, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_rz2:Landroid/widget/SeekBar;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v5, v3

    const-wide v7, 0x4076c00000000000L    # 364.0

    const-wide v9, 0x409a500000000000L    # 1684.0

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    invoke-static/range {v5 .. v14}, Lorg/cubepilot/herelinksettings/JoystickSettings;->map(DDDDD)D

    move-result-wide v5

    double-to-int v3, v5

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1013
    iget-object v3, v0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_wheel2:Landroid/widget/SeekBar;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x4076c00000000000L    # 364.0

    const-wide v8, 0x409a500000000000L    # 1684.0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    invoke-static/range {v4 .. v13}, Lorg/cubepilot/herelinksettings/JoystickSettings;->map(DDDDD)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method private updatemainview()V
    .locals 13

    .line 375
    iget-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcont:Z

    const v1, 0x7f09008a

    const v2, 0x7f090088

    const v3, 0x7f090090

    const v4, 0x7f09008e

    const v5, 0x7f09008c

    const v6, 0x7f090089

    const v7, 0x7f090087

    const v8, 0x7f09008f

    const v9, 0x7f09008d

    const v10, 0x7f09008b

    const/4 v11, 0x4

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualmain:Z

    if-nez v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 377
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 378
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 379
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 380
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 382
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 383
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 384
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 385
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 386
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 388
    :cond_0
    iget-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcont:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualmain:Z

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 390
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 391
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 392
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 393
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 395
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 396
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 398
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 399
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 403
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 404
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 405
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 406
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 408
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 409
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 410
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 411
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 412
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getGameControllerIds()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 296
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 297
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 298
    invoke-virtual {v5}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    and-int/lit16 v6, v5, 0x401

    const/16 v7, 0x401

    if-eq v6, v7, :cond_0

    const v6, 0x1000010

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    .line 305
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 306
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public handleSaveSettings()V
    .locals 4

    const/4 v0, 0x0

    .line 891
    :try_start_0
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->saveRevSettings([Z)V

    .line 892
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->np_wheel_channel:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lcom/shawnlin/numberpicker/NumberPicker;->getValue()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->np_wheel_channel:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lcom/shawnlin/numberpicker/NumberPicker;->getValue()I

    move-result v3

    if-le v3, v2, :cond_1

    iget-object v3, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->np_wheel_channel:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lcom/shawnlin/numberpicker/NumberPicker;->getValue()I

    move-result v3

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->np_wheel_channel:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lcom/shawnlin/numberpicker/NumberPicker;->getValue()I

    move-result v3

    :goto_1
    invoke-virtual {p0, v1, v3}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setWheelBusChannel(II)Z

    .line 897
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->saveDeadBand()V

    .line 898
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->saveChannelOutputs()V

    .line 901
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09012c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lcom/shawnlin/numberpicker/NumberPicker;->getValue()I

    move-result v1

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setMode(I)V

    .line 902
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setThrottleCenterZero(Z)V

    .line 903
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setWheelAccumulator(Z)V

    .line 904
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermain:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setDualControllerMain(Z)V

    .line 905
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermode:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setDualControllerMode(Z)V

    .line 907
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 910
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermode:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermode:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermain:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v1, "Default"

    .line 913
    :cond_3
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getUDPIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 914
    invoke-static {v1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setUDPIpAddress(Ljava/lang/String;)V

    const-string v1, "ctl.restart"

    const-string v2, "rc_service"

    .line 915
    invoke-direct {p0, v1, v2}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :cond_4
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Save Successful"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 920
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 921
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Save Failed"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public initializeResolveListener(Ljava/lang/String;)Landroid/net/nsd/NsdManager$ResolveListener;
    .locals 2

    .line 226
    new-instance v0, Lorg/cubepilot/herelinksettings/JoystickSettings$3;

    const-string v1, "JoystickSettings-NSD"

    invoke-direct {v0, p0, v1, p1}, Lorg/cubepilot/herelinksettings/JoystickSettings$3;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic lambda$SetAuxChannelBounds$51$JoystickSettings(ILcom/shawnlin/numberpicker/NumberPicker;II)V
    .locals 0

    .line 819
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->chout:[I

    aput p4, p2, p1

    return-void
.end method

.method public synthetic lambda$SetDeadZoneBounds$52$JoystickSettings(ILjava/lang/String;Lcom/shawnlin/numberpicker/NumberPicker;II)V
    .locals 0

    .line 862
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dz:[I

    aput p5, p3, p1

    .line 864
    :try_start_0
    invoke-static {p2, p5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setDeadZone(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 866
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$SetExpoBounds$53$JoystickSettings(ILjava/lang/String;Lcom/shawnlin/numberpicker/NumberPicker;II)V
    .locals 0

    .line 880
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->expo:[I

    aput p5, p3, p1

    .line 882
    :try_start_0
    aget p1, p3, p1

    int-to-float p1, p1

    invoke-static {p2, p1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setExponential(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 884
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initViews$42$JoystickSettings(Landroid/view/View;)V
    .locals 2

    .line 577
    iget-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualmain:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualmain:Z

    .line 578
    iget-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualmain:Z

    const v1, 0x7f0901b0

    if-eqz p1, :cond_0

    .line 579
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 585
    :goto_0
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->updatemainview()V

    return-void
.end method

.method public synthetic lambda$initViews$43$JoystickSettings(Landroid/view/View;)V
    .locals 4

    .line 589
    iget-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcont:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcont:Z

    .line 590
    iget-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcont:Z

    const v1, 0x7f0901b0

    const/4 v2, 0x0

    const v3, 0x7f0901af

    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 592
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_0

    .line 595
    :cond_0
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 596
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 598
    :goto_0
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->updatemainview()V

    return-void
.end method

.method public synthetic lambda$initViews$44$JoystickSettings(Landroid/view/View;)V
    .locals 3

    .line 608
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p1, v0

    .line 609
    aget-boolean p1, p1, v0

    const v1, 0x7f090212

    if-eqz p1, :cond_0

    .line 610
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initViews$45$JoystickSettings(Landroid/view/View;)V
    .locals 2

    .line 622
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v0, 0x1

    aget-boolean v1, p1, v0

    xor-int/2addr v1, v0

    aput-boolean v1, p1, v0

    .line 623
    aget-boolean p1, p1, v0

    const v1, 0x7f090214

    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 626
    :cond_0
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initViews$46$JoystickSettings(Landroid/view/View;)V
    .locals 3

    .line 636
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v0, 0x2

    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p1, v0

    .line 637
    aget-boolean p1, p1, v0

    const v0, 0x7f090216

    if-eqz p1, :cond_0

    .line 638
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 640
    :cond_0
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initViews$47$JoystickSettings(Landroid/view/View;)V
    .locals 3

    .line 650
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v0, 0x3

    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p1, v0

    .line 651
    aget-boolean p1, p1, v0

    const v0, 0x7f09020e

    if-eqz p1, :cond_0

    .line 652
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initViews$48$JoystickSettings(Landroid/view/View;)V
    .locals 3

    .line 664
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v0, 0x4

    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p1, v0

    .line 665
    aget-boolean p1, p1, v0

    const v0, 0x7f090210

    if-eqz p1, :cond_0

    .line 666
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initViews$49$JoystickSettings(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 674
    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->throttleCenterZero:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 676
    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->throttleCenterZero:Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$initViews$50$JoystickSettings(Landroid/view/View;)V
    .locals 0

    .line 754
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->handleSaveSettings()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0c001e

    .line 118
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 119
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getThrottleCenterZero()Z

    move-result p2

    iput-boolean p2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->throttleCenterZero:Z

    .line 120
    iget-boolean p2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->throttleCenterZero:Z

    if-nez p2, :cond_0

    const p2, 0x7f090072

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    const p2, 0x7f090073

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getWheelAccumulator()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 274
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 275
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 258
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 259
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->timer:Ljava/util/Timer;

    .line 260
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->timer:Ljava/util/Timer;

    new-instance v2, Lorg/cubepilot/herelinksettings/JoystickSettings$4;

    invoke-direct {v2, p0}, Lorg/cubepilot/herelinksettings/JoystickSettings$4;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 145
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 146
    new-instance v0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->js_calib:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    .line 147
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->initViews()V

    const/4 v0, 0x0

    .line 153
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 154
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "chmod 755 /data/oem/etc/\n"

    .line 155
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "chmod 644 /data/oem/etc/rc_service_config_optimus.ini\n"

    .line 156
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "chmod 644 /data/rc-service/keyconfig.ini\n"

    .line 157
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "chmod 644 /data/rc-service/joystickconfig.ini\n"

    .line 158
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "exit\n"

    .line 159
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 161
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 168
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :catch_0
    move-object v2, v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_1
    if-eqz v2, :cond_1

    .line 166
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 168
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 171
    :catch_1
    throw v0

    :catch_2
    move-object v1, v0

    move-object v2, v1

    :catch_3
    :goto_2
    if-eqz v2, :cond_0

    goto :goto_0

    .line 175
    :catch_4
    :goto_3
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "servicediscovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    .line 177
    new-instance v1, Lorg/cubepilot/herelinksettings/JoystickSettings$2;

    const-string v2, "JoystickSettings-NSD"

    invoke-direct {v1, p0, v2, v0}, Lorg/cubepilot/herelinksettings/JoystickSettings$2;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;Ljava/lang/String;Landroid/net/nsd/NsdManager;)V

    const/4 v2, 0x1

    const-string v3, "_mavlink._udp."

    .line 219
    invoke-virtual {v0, v3, v2, v1}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 131
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 132
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lorg/cubepilot/herelinksettings/JoystickSettings$1;

    invoke-direct {p2, p0}, Lorg/cubepilot/herelinksettings/JoystickSettings$1;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setAxisValues(FFFFF)V
    .locals 8

    .line 969
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    .line 970
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    .line 971
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    .line 972
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    .line 973
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->rev:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    .line 975
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_x:Landroid/widget/SeekBar;

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    mul-double/2addr v1, v5

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 976
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_y:Landroid/widget/SeekBar;

    float-to-double v1, p2

    add-double/2addr v1, v3

    mul-double/2addr v1, v5

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 977
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_z:Landroid/widget/SeekBar;

    float-to-double v1, p3

    add-double/2addr v1, v3

    mul-double/2addr v1, v5

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 978
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_rz:Landroid/widget/SeekBar;

    float-to-double v1, p4

    add-double/2addr v1, v3

    mul-double/2addr v1, v5

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 979
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->sb_axis_wheel:Landroid/widget/SeekBar;

    float-to-double v1, p5

    add-double/2addr v1, v3

    mul-double/2addr v1, v5

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 981
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->updateAuxChannels()V

    .line 984
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->js_calib:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->updateCal(FFFFF)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 280
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 281
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->js_calib:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    if-nez p1, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->getSettingsExist()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getCalibrated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 285
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->txt_cal_state:Landroid/widget/TextView;

    const v0, 0x7f10005a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->txt_cal_state:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->txt_cal_state:Landroid/widget/TextView;

    const v0, 0x7f10005c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 289
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings;->txt_cal_state:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setWheelBusChannel(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1287
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1289
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1291
    :cond_0
    new-instance v1, Lorg/ini4j/Ini;

    invoke-direct {v1, v0}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 1292
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "scrollwheel"

    const-string v4, "channel"

    invoke-virtual {v1, v3, v4, v2}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "sbus"

    invoke-virtual {v1, v3, v4, v2}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1294
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lorg/cubepilot/herelinksettings/ButtonSettings;->verifyScrollWheelCfg(Lorg/ini4j/Ini;IILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1295
    invoke-virtual {v1, v0}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
