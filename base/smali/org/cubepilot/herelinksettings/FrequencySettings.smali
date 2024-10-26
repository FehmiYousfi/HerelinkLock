.class public Lorg/cubepilot/herelinksettings/FrequencySettings;
.super Landroidx/fragment/app/Fragment;
.source "FrequencySettings.java"


# static fields
.field private static final MaxFreq:I = 0x1e

.field private static final MinFreq:I = 0x0

.field private static final T:Ljava/lang/String; = "FrequencySettings"


# instance fields
.field private adaptbw:Landroid/widget/Switch;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private chart:Lcom/github/mikephil/charting/charts/LineChart;

.field private connection:Landroid/content/ServiceConnection;

.field private currentFreq:I

.field private dl:Landroid/widget/Spinner;

.field private dlSpinnerTouched:Z

.field private dynpower:Landroid/widget/Switch;

.field private freqReset:Landroid/view/View;

.field private freqSpinner:Landroid/widget/Spinner;

.field private freqSpinnerTouched:Z

.field private hoppingSwitch:Landroid/widget/Switch;

.field private infoLabel:Landroid/view/View;

.field private localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private radioService:Lorg/cubepilot/herelinksettings/RadioStatService;

.field private txant:Landroid/widget/Spinner;

.field private ul:Landroid/widget/Spinner;

.field private ulSpinnerTouched:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    .line 61
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinnerTouched:Z

    .line 62
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->ulSpinnerTouched:Z

    .line 63
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dlSpinnerTouched:Z

    .line 367
    new-instance v0, Lorg/cubepilot/herelinksettings/FrequencySettings$5;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/FrequencySettings$5;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->connection:Landroid/content/ServiceConnection;

    .line 381
    new-instance v0, Lorg/cubepilot/herelinksettings/FrequencySettings$6;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/FrequencySettings$6;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private SendQGCCommand(Ljava/lang/String;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->radioService:Lorg/cubepilot/herelinksettings/RadioStatService;

    const-string v1, "FrequencySettings"

    if-nez v0, :cond_0

    const-string p1, "radio service not started"

    .line 326
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 329
    :cond_0
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->radioService:Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->sendCmd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/cubepilot/herelinksettings/FrequencySettings;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dlSpinnerTouched:Z

    return p0
.end method

.method static synthetic access$002(Lorg/cubepilot/herelinksettings/FrequencySettings;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dlSpinnerTouched:Z

    return p1
.end method

.method static synthetic access$100(Lorg/cubepilot/herelinksettings/FrequencySettings;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/cubepilot/herelinksettings/FrequencySettings;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->ulSpinnerTouched:Z

    return p0
.end method

.method static synthetic access$202(Lorg/cubepilot/herelinksettings/FrequencySettings;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->ulSpinnerTouched:Z

    return p1
.end method

.method static synthetic access$300(Lorg/cubepilot/herelinksettings/FrequencySettings;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinnerTouched:Z

    return p0
.end method

.method static synthetic access$302(Lorg/cubepilot/herelinksettings/FrequencySettings;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinnerTouched:Z

    return p1
.end method

.method static synthetic access$400(Lorg/cubepilot/herelinksettings/FrequencySettings;)Landroid/widget/Spinner;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$500(Lorg/cubepilot/herelinksettings/FrequencySettings;IZ)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/cubepilot/herelinksettings/FrequencySettings;->invalidFrequency(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/cubepilot/herelinksettings/FrequencySettings;)Landroid/widget/Spinner;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->txant:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$702(Lorg/cubepilot/herelinksettings/FrequencySettings;Lorg/cubepilot/herelinksettings/RadioStatService;)Lorg/cubepilot/herelinksettings/RadioStatService;
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->radioService:Lorg/cubepilot/herelinksettings/RadioStatService;

    return-object p1
.end method

.method static synthetic access$800(Lorg/cubepilot/herelinksettings/FrequencySettings;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getStates()V

    return-void
.end method

.method static synthetic access$900(Lorg/cubepilot/herelinksettings/FrequencySettings;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->handleMsg(Ljava/lang/String;)V

    return-void
.end method

.method private createChartDataSet(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 299
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, p2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 300
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawIcons(Z)V

    .line 301
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 302
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 303
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 305
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getStates()V
    .locals 1

    const-string v0, "QGCHOPSTATE"

    .line 334
    invoke-direct {p0, v0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    const-string v0, "QGCCLBRSTATE"

    .line 335
    invoke-direct {p0, v0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    const-string v0, "QGCULBWCFG"

    .line 336
    invoke-direct {p0, v0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    const-string v0, "QGCDLBWCFG"

    .line 337
    invoke-direct {p0, v0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    const-string v0, "QGCTXANTCTRL:0"

    .line 338
    invoke-direct {p0, v0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    const-string v0, "QGCTXPWRCTRL:2"

    .line 339
    invoke-direct {p0, v0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    return-void
.end method

.method private handleMsg(Ljava/lang/String;)V
    .locals 9

    const-string v0, " "

    .line 404
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 405
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 410
    :try_start_0
    array-length v2, p1

    if-le v2, v1, :cond_1

    .line 411
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move v2, v0

    .line 415
    :goto_0
    aget-object v3, p1, v0

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "DL_BW_CFG"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :sswitch_1
    const-string v5, "UL_BW_CFG"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_2

    :sswitch_2
    const-string v5, "FREQ_LIST_RECEIVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v8

    goto :goto_2

    :sswitch_3
    const-string v5, "FREQ_HOP_STATE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_2

    :sswitch_4
    const-string v5, "TX_PWR_CTRL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_5
    const-string v5, "SNR_LIST_UPDATED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_6
    const-string v5, "TX_ANT_BITMAP"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 451
    :pswitch_0
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->updateSNR()V

    .line 452
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->updatePairingFreqs()V

    goto :goto_4

    :pswitch_1
    const-string p1, "QGCAUTOCLBR"

    .line 446
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    .line 447
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->updatePairingFreqs()V

    goto :goto_4

    .line 442
    :pswitch_2
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dynpower:Landroid/widget/Switch;

    if-ne v2, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_4

    .line 439
    :pswitch_3
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->txant:Landroid/widget/Spinner;

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 436
    :pswitch_4
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->hoppingSwitch:Landroid/widget/Switch;

    if-ne v2, v1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_4

    :pswitch_5
    if-ne v2, v8, :cond_5

    move v0, v1

    .line 431
    :cond_5
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dl:Landroid/widget/Spinner;

    invoke-virtual {p1, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 432
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->updatePairingFreqs()V

    goto :goto_4

    :pswitch_6
    if-ne v2, v7, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    if-ne v2, v8, :cond_7

    move v0, v6

    .line 423
    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->ul:Landroid/widget/Spinner;

    invoke-virtual {p1, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x777488be -> :sswitch_6
        -0x5f96741e -> :sswitch_5
        -0x246d45a6 -> :sswitch_4
        -0x105fe82c -> :sswitch_3
        0x14fc62db -> :sswitch_2
        0x28983402 -> :sswitch_1
        0x500cd4f1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private invalidFrequency(IZ)Z
    .locals 4

    .line 254
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dl:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0xb7ca

    if-lt p1, v3, :cond_0

    const v3, 0xbaa9

    if-le p1, v3, :cond_1

    :cond_0
    if-eqz v0, :cond_4

    :cond_1
    const v3, 0xb7fc

    if-lt p1, v3, :cond_2

    const v3, 0xba77

    if-le p1, v3, :cond_3

    :cond_2
    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 258
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "Frequency not working for current DL BW"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    return v2
.end method

.method public static newInstance()Lorg/cubepilot/herelinksettings/FrequencySettings;
    .locals 2

    .line 72
    new-instance v0, Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/FrequencySettings;-><init>()V

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    invoke-virtual {v0, v1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateChartData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p1, v0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->updateDataSetValues(Ljava/util/List;I)V

    const/4 p1, 0x1

    .line 310
    invoke-direct {p0, p2, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->updateDataSetValues(Ljava/util/List;I)V

    const/4 p1, 0x2

    .line 311
    invoke-direct {p0, p3, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->updateDataSetValues(Ljava/util/List;I)V

    .line 313
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineData;->notifyDataChanged()V

    .line 314
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->notifyDataSetChanged()V

    .line 315
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    return-void
.end method

.method private updateChartView()V
    .locals 5

    .line 266
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 267
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    .line 270
    invoke-virtual {v0, v3, v3, v2}, Lcom/github/mikephil/charting/components/XAxis;->enableGridDashedLine(FFF)V

    .line 271
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/4 v4, -0x1

    .line 272
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 274
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v3, v3, v2}, Lcom/github/mikephil/charting/components/YAxis;->enableGridDashedLine(FFF)V

    const/high16 v3, 0x41f00000    # 30.0f

    .line 277
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 278
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 279
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 281
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 282
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    const-string v2, "#BDBDBD"

    .line 283
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Legend;->setTextColor(I)V

    .line 284
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "SNR"

    const-string v3, "#4CAF50"

    .line 288
    invoke-direct {p0, v0, v2, v3}, Lorg/cubepilot/herelinksettings/FrequencySettings;->createChartDataSet(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Bandwidth"

    const-string v3, "#42A5F5"

    .line 289
    invoke-direct {p0, v0, v2, v3}, Lorg/cubepilot/herelinksettings/FrequencySettings;->createChartDataSet(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Current Freq."

    const-string v3, "#F44336"

    .line 290
    invoke-direct {p0, v0, v2, v3}, Lorg/cubepilot/herelinksettings/FrequencySettings;->createChartDataSet(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v2, v0}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    .line 293
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineData;->setHighlightEnabled(Z)V

    .line 294
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method private updateDataSetValues(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;I)V"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 320
    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setValues(Ljava/util/List;)V

    .line 321
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->notifyDataSetChanged()V

    return-void
.end method

.method private updatePairingFreqs()V
    .locals 8

    .line 458
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 461
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/tmp/d2d_frequency.list"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/pinecone/radio/d2d_frequency.list"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v1, -0x1

    const v2, 0x7f0c0065

    const/4 v3, 0x0

    .line 466
    :try_start_0
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 467
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 469
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v6, " "

    .line 470
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 471
    array-length v6, v0

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    goto :goto_0

    .line 474
    :cond_2
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 475
    invoke-direct {p0, v0, v3}, Lorg/cubepilot/herelinksettings/FrequencySettings;->invalidFrequency(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 478
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    :cond_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 483
    iget v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    if-lez v0, :cond_6

    .line 484
    iget v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 489
    iget v7, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    move v5, v1

    .line 496
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/SortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v6, v7, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-lez v5, :cond_b

    .line 498
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const-string v0, "FrequencySettings"

    const-string v4, "failed to open frequency list file"

    .line 503
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 505
    iget v4, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    const v4, 0xb7fc

    :goto_3
    const v5, 0xba70

    if-ge v4, v5, :cond_8

    .line 507
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x5

    goto :goto_3

    .line 509
    :cond_8
    iget-object v4, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/SortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, v6, v2, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 511
    iget v2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    if-lez v2, :cond_a

    .line 514
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 515
    iget v3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-lez v1, :cond_b

    .line 522
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_b
    :goto_6
    return-void
.end method

.method private updateSNR()V
    .locals 11

    .line 528
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 529
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 530
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 531
    new-instance v3, Ljava/io/File;

    const-string v4, "/tmp/d2d_interference.list"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 533
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/pinecone/radio/d2d_interference.list"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x1

    .line 537
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v3, 0x0

    move v6, v4

    .line 540
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v8, " "

    .line 541
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 542
    array-length v9, v8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    if-eqz v6, :cond_1

    .line 544
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    move v6, v3

    goto :goto_0

    .line 549
    :cond_2
    new-instance v7, Lcom/github/mikephil/charting/data/Entry;

    aget-object v9, v8, v3

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aget-object v8, v8, v4

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-direct {v7, v9, v8}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 551
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "FrequencySettings"

    const-string v5, "failed to open snr file"

    .line 554
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_1
    iget v3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    if-ge v3, v4, :cond_4

    .line 559
    invoke-direct {p0, v0, v1, v2}, Lorg/cubepilot/herelinksettings/FrequencySettings;->updateChartData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 563
    :cond_4
    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    new-instance v3, Lcom/github/mikephil/charting/data/Entry;

    iget v5, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    int-to-float v5, v5

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-direct {v3, v5, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x32

    .line 567
    iget-object v5, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dl:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-ne v5, v4, :cond_5

    const/16 v3, 0x64

    .line 571
    :cond_5
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    iget v5, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    sub-int/2addr v5, v3

    int-to-float v5, v5

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    iget v5, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    sub-int/2addr v5, v3

    int-to-float v5, v5

    invoke-direct {v4, v5, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    iget v5, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    invoke-direct {v4, v5, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    iget v5, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->currentFreq:I

    add-int/2addr v5, v3

    int-to-float v3, v5

    invoke-direct {v4, v3, v6}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-direct {p0, v0, v1, v2}, Lorg/cubepilot/herelinksettings/FrequencySettings;->updateChartData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$FrequencySettings(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 99
    iput-boolean p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dlSpinnerTouched:Z

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onCreateView$1$FrequencySettings(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 127
    iput-boolean p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->ulSpinnerTouched:Z

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onCreateView$2$FrequencySettings(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 151
    iput-boolean p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinnerTouched:Z

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onCreateView$3$FrequencySettings(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QGCHOPCTRL:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$4$FrequencySettings(Landroid/view/View;)V
    .locals 2

    const-string p1, "QGCFREQNEG"

    .line 180
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f10003e

    invoke-virtual {p0, v0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$onCreateView$5$FrequencySettings(Landroid/view/View;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getStates()V

    return-void
.end method

.method public synthetic lambda$onCreateView$6$FrequencySettings(Landroid/view/View;)V
    .locals 0

    const-string p1, "QGCAUTOCLBR"

    .line 184
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$7$FrequencySettings(Landroid/view/View;)V
    .locals 2

    .line 188
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "No frequency selected"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 192
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 193
    invoke-direct {p0, p1, v0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->invalidFrequency(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QGCFREQRST:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$8$FrequencySettings(Landroid/view/View;)V
    .locals 0

    .line 233
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dynpower:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "QGCTXPWRCTRL:1"

    .line 234
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "QGCTXPWRCTRL:0"

    .line 236
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreateView$9$FrequencySettings(Landroid/view/View;)V
    .locals 0

    .line 241
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->adaptbw:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "QGCDLADAPT:1"

    .line 242
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "QGCDLADAPT:0"

    .line 244
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->SendQGCCommand(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const p3, 0x7f0c0034

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const p3, 0x7f090004

    .line 93
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dl:Landroid/widget/Spinner;

    const-string p3, "20M"

    const-string v0, "10M"

    .line 94
    filled-new-array {v0, p3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "20"

    const-string v3, "10"

    .line 95
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v4

    .line 96
    iget-object v5, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dl:Landroid/widget/Spinner;

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x7f0c0065

    invoke-direct {v6, p2, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 97
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dl:Landroid/widget/Spinner;

    new-instance v5, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$1tSL99y01EU_A2IyK7EqX_hSmls;

    invoke-direct {v5, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$1tSL99y01EU_A2IyK7EqX_hSmls;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dl:Landroid/widget/Spinner;

    new-instance v5, Lorg/cubepilot/herelinksettings/FrequencySettings$1;

    invoke-direct {v5, p0, v4}, Lorg/cubepilot/herelinksettings/FrequencySettings$1;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;[Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f09000b

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->ul:Landroid/widget/Spinner;

    const-string v1, "1.4M"

    .line 122
    filled-new-array {v1, v0, p3}, [Ljava/lang/String;

    move-result-object p3

    const-string v0, "1"

    .line 123
    filled-new-array {v0, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->ul:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p2, v7, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 125
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->ul:Landroid/widget/Spinner;

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$NUfQGmkkVIZNZvTvCGB98NqkO_8;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$NUfQGmkkVIZNZvTvCGB98NqkO_8;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {p3, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->ul:Landroid/widget/Spinner;

    new-instance v1, Lorg/cubepilot/herelinksettings/FrequencySettings$2;

    invoke-direct {v1, p0, v0}, Lorg/cubepilot/herelinksettings/FrequencySettings$2;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;[Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p3, 0x7f0900c3

    .line 148
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    .line 149
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    new-instance v0, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$RjASNzKlD3w3Oz7IsOQLH2OCugU;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$RjASNzKlD3w3Oz7IsOQLH2OCugU;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqSpinner:Landroid/widget/Spinner;

    new-instance v0, Lorg/cubepilot/herelinksettings/FrequencySettings$3;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/FrequencySettings$3;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 175
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->updatePairingFreqs()V

    const p3, 0x7f0900d6

    .line 177
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Switch;

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->hoppingSwitch:Landroid/widget/Switch;

    .line 178
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->hoppingSwitch:Landroid/widget/Switch;

    new-instance v0, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$LfWJzWoHKauSya29RGXl1rdas3g;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$LfWJzWoHKauSya29RGXl1rdas3g;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {p3, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p3, 0x7f09013d

    .line 179
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$a8E1YmLa3eGEeb5ii5CHeTGQ3jk;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$a8E1YmLa3eGEeb5ii5CHeTGQ3jk;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900cd

    .line 183
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$jfEmm4O_zI7Sbqa5EeFjnU0dNiQ;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$jfEmm4O_zI7Sbqa5EeFjnU0dNiQ;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900c4

    .line 184
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$BGvWcp888M3uSGT5oXvSNthUeEI;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$BGvWcp888M3uSGT5oXvSNthUeEI;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900c5

    .line 185
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqReset:Landroid/view/View;

    .line 186
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqReset:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->freqReset:Landroid/view/View;

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$nsWwifH5I_I2wVW33oKi7IT2SWg;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$nsWwifH5I_I2wVW33oKi7IT2SWg;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900e0

    .line 198
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->infoLabel:Landroid/view/View;

    .line 199
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->infoLabel:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0901b5

    .line 201
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->txant:Landroid/widget/Spinner;

    .line 202
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->txant:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const-string v1, "Left"

    const-string v2, "Right"

    const-string v3, "Auto"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 203
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->txant:Landroid/widget/Spinner;

    new-instance p3, Lorg/cubepilot/herelinksettings/FrequencySettings$4;

    invoke-direct {p3, p0}, Lorg/cubepilot/herelinksettings/FrequencySettings$4;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f0901b1

    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dynpower:Landroid/widget/Switch;

    .line 232
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->dynpower:Landroid/widget/Switch;

    new-instance p3, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$7fXw2E0Fzqnx_DVjoIWMWZrlKZU;

    invoke-direct {p3, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$7fXw2E0Fzqnx_DVjoIWMWZrlKZU;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901ae

    .line 239
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->adaptbw:Landroid/widget/Switch;

    .line 240
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->adaptbw:Landroid/widget/Switch;

    new-instance p3, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$-aZclC_oMOX0SDCEz5uH7DXKDxQ;

    invoke-direct {p3, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$FrequencySettings$-aZclC_oMOX0SDCEz5uH7DXKDxQ;-><init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090146

    .line 247
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 248
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->updateChartView()V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 362
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 364
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 354
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 357
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "RadioStatService.ServiceLocalEvent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 344
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 349
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
