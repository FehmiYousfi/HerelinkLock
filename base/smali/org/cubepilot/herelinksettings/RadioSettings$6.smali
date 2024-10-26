.class Lorg/cubepilot/herelinksettings/RadioSettings$6;
.super Landroid/os/Handler;
.source "RadioSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/RadioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/RadioSettings;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/RadioSettings;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string v0, "C"

    const-string v1, "r"

    .line 243
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$100(Lorg/cubepilot/herelinksettings/RadioSettings;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 248
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "/sys/class/thermal/thermal_zone7/temp"

    invoke-direct {v4, v5, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v5, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-virtual {v5}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "batterymanager"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryManager;

    .line 250
    iget-object v6, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-virtual {v6}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09021a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "ma\t"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 255
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 253
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 259
    :goto_0
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "/sys/class/thermal/thermal_zone0/temp"

    invoke-direct {v4, v5, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    .line 261
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 263
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v6, "/sys/class/thermal/thermal_zone6/temp"

    invoke-direct {v4, v6, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    .line 265
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 267
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v7, "/proc/stat"

    invoke-direct {v4, v7, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v7, "\\s+"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    const/4 v4, 0x1

    .line 272
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v4, v2

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v4, v2

    .line 273
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v4

    .line 278
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-virtual {v2}, Lorg/cubepilot/herelinksettings/RadioSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090220

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "C\tGPU "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    int-to-float v2, v4

    iput v2, v0, Lorg/cubepilot/herelinksettings/RadioSettings;->oldactive:F

    .line 282
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    int-to-float v1, v1

    iput v1, v0, Lorg/cubepilot/herelinksettings/RadioSettings;->oldtotal:F
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 292
    :goto_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v1, ", S: "

    const-string v2, "M: "

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 325
    :pswitch_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$900(Lorg/cubepilot/herelinksettings/RadioSettings;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v2

    iget-object v2, v2, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_uav_m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v1

    iget-object v1, v1, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_uav_s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 322
    :pswitch_1
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$900(Lorg/cubepilot/herelinksettings/RadioSettings;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v2

    iget-object v2, v2, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_uav_m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v1

    iget-object v1, v1, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_uav_s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 334
    :pswitch_2
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    iget p1, p1, Lorg/cubepilot/herelinksettings/RadioStatService;->calibrated:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 335
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_cal_state:Landroid/widget/TextView;

    const-string v0, "Unknown"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 336
    :cond_1
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    iget p1, p1, Lorg/cubepilot/herelinksettings/RadioStatService;->calibrated:I

    if-nez p1, :cond_2

    .line 337
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_cal_state:Landroid/widget/TextView;

    const-string v0, "Unpaired"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 339
    :cond_2
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_cal_state:Landroid/widget/TextView;

    const-string v0, "Paired"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 331
    :pswitch_3
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_uplink_bw:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v0

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/RadioStatService;->ul_bw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 328
    :pswitch_4
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_flight_distance:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v0

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/RadioStatService;->fly_distance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 319
    :pswitch_5
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_signal_strength:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v2

    iget-object v2, v2, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_gcs_m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v1

    iget-object v1, v1, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_gcs_s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 316
    :pswitch_6
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_signal_strength:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v2

    iget-object v2, v2, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_gcs_m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v1

    iget-object v1, v1, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_gcs_s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 313
    :pswitch_7
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->tv_ul_rate:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v0

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/RadioStatService;->ul_rate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 294
    :pswitch_8
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    const v1, 0x7f1000d2

    invoke-static {p1, v1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$700(Lorg/cubepilot/herelinksettings/RadioSettings;I)V

    .line 295
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    const v2, 0x7f10003e

    .line 296
    invoke-virtual {v1, v2}, Lorg/cubepilot/herelinksettings/RadioSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 307
    :pswitch_9
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$800(Lorg/cubepilot/herelinksettings/RadioSettings;)V

    .line 308
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    const v2, 0x7f10003d

    .line 309
    invoke-virtual {v1, v2}, Lorg/cubepilot/herelinksettings/RadioSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 301
    :pswitch_a
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$800(Lorg/cubepilot/herelinksettings/RadioSettings;)V

    .line 302
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$6;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    const v2, 0x7f10003f

    .line 303
    invoke-virtual {v1, v2}, Lorg/cubepilot/herelinksettings/RadioSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
