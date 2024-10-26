.class Lorg/cubepilot/herelinksettings/JoystickCalibrator;
.super Ljava/lang/Object;
.source "JoystickCalibrator.java"


# static fields
.field public static maxValSettleHandler:Landroid/os/Handler;

.field public static minValSettleHandler:Landroid/os/Handler;


# instance fields
.field private final calCenterPoint:I

.field private final calDefaultMaxValue:I

.field private final calDefaultMinValue:I

.field private final calMinDelta:I

.field private final calMoveDelta:I

.field private final calRoughCenterDelta:I

.field private final calSettleDelta:I

.field private final calValidMaxValue:I

.field private final calValidMinValue:I

.field private cal_state:Landroid/widget/TextView;

.field private context:Landroid/app/Activity;

.field private currState:I

.field private js_settings:Lorg/cubepilot/herelinksettings/JoystickSettings;

.field private maxDone:Z

.field private maxSettlePosted:Z

.field maxStateUpdate:Ljava/lang/Runnable;

.field private maxVal:[I

.field private maxValSettle:[I

.field private minDone:Z

.field private minSettlePosted:Z

.field minStateUpdate:Ljava/lang/Runnable;

.field private minVal:[I

.field private minValSettle:[I

.field private final stickDetectSettleMSecs:I

.field private val:[I

.field private view:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minValSettleHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxValSettleHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->calCenterPoint:I

    const/16 v0, -0x8000

    .line 18
    iput v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->calValidMinValue:I

    const/16 v1, 0x7fff

    .line 19
    iput v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->calValidMaxValue:I

    .line 20
    iput v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->calDefaultMinValue:I

    .line 21
    iput v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->calDefaultMaxValue:I

    const/16 v0, 0x1f4

    .line 22
    iput v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->calRoughCenterDelta:I

    const/16 v1, 0x4000

    .line 23
    iput v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->calMoveDelta:I

    const/16 v1, 0x258

    .line 24
    iput v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->calSettleDelta:I

    const/16 v1, 0x3e8

    .line 25
    iput v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->calMinDelta:I

    .line 27
    iput v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->stickDetectSettleMSecs:I

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->currState:I

    .line 52
    new-instance v0, Lorg/cubepilot/herelinksettings/JoystickCalibrator$1;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/JoystickCalibrator$1;-><init>(Lorg/cubepilot/herelinksettings/JoystickCalibrator;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minStateUpdate:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lorg/cubepilot/herelinksettings/JoystickCalibrator$2;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/JoystickCalibrator$2;-><init>(Lorg/cubepilot/herelinksettings/JoystickCalibrator;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxStateUpdate:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->js_settings:Lorg/cubepilot/herelinksettings/JoystickSettings;

    return-void
.end method

.method static synthetic access$002(Lorg/cubepilot/herelinksettings/JoystickCalibrator;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minDone:Z

    return p1
.end method

.method static synthetic access$100(Lorg/cubepilot/herelinksettings/JoystickCalibrator;)I
    .locals 0

    .line 16
    iget p0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->currState:I

    return p0
.end method

.method static synthetic access$200(Lorg/cubepilot/herelinksettings/JoystickCalibrator;)[I
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minValSettle:[I

    return-object p0
.end method

.method static synthetic access$302(Lorg/cubepilot/herelinksettings/JoystickCalibrator;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minSettlePosted:Z

    return p1
.end method

.method static synthetic access$400(Lorg/cubepilot/herelinksettings/JoystickCalibrator;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->setState(I)V

    return-void
.end method

.method static synthetic access$502(Lorg/cubepilot/herelinksettings/JoystickCalibrator;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxDone:Z

    return p1
.end method

.method static synthetic access$600(Lorg/cubepilot/herelinksettings/JoystickCalibrator;)[I
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxValSettle:[I

    return-object p0
.end method

.method static synthetic access$702(Lorg/cubepilot/herelinksettings/JoystickCalibrator;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxSettlePosted:Z

    return p1
.end method

.method private setState(I)V
    .locals 5

    .line 87
    iput p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->currState:I

    const v0, 0x7f080083

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 162
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 137
    :pswitch_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->context:Landroid/app/Activity;

    const-string v3, "Calibration Finished"

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    move p1, v2

    :goto_0
    const/4 v3, 0x5

    if-ge p1, v3, :cond_0

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StickCal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minVal:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxVal:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JoystickCalibration"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 141
    iput p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->currState:I

    .line 142
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    sget-object p1, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minValSettleHandler:Landroid/os/Handler;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    sget-object p1, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxValSettleHandler:Landroid/os/Handler;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->saveSettings()V

    .line 147
    invoke-static {v1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->setCalibrated(Z)V

    .line 148
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->js_settings:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->handleSaveSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->context:Landroid/app/Activity;

    const-string v0, "Failed to save Cal"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 153
    :goto_1
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->getSettingsExist()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getCalibrated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->cal_state:Landroid/widget/TextView;

    const v0, 0x7f10005a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->cal_state:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 157
    :cond_1
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->cal_state:Landroid/widget/TextView;

    const v0, 0x7f10005c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->cal_state:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 134
    :pswitch_1
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    const v0, 0x7f0800a8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 129
    :pswitch_2
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minDone:Z

    .line 130
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxDone:Z

    .line 131
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    const v0, 0x7f0800a9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 126
    :pswitch_3
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    const v0, 0x7f080086

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 121
    :pswitch_4
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minDone:Z

    .line 122
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxDone:Z

    .line 123
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    const v0, 0x7f080087

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 118
    :pswitch_5
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 113
    :pswitch_6
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minDone:Z

    .line 114
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxDone:Z

    .line 115
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    const v0, 0x7f080088

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 110
    :pswitch_7
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    const v0, 0x7f08008a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 105
    :pswitch_8
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minDone:Z

    .line 106
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxDone:Z

    .line 107
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    const v0, 0x7f08008b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 102
    :pswitch_9
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    const v0, 0x7f080085

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 90
    :pswitch_a
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->context:Landroid/app/Activity;

    const-string v0, "Joytick Calibration Started"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 91
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minDone:Z

    .line 92
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxDone:Z

    .line 93
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minSettlePosted:Z

    .line 94
    iput-boolean v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxSettlePosted:Z

    .line 95
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minVal:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 96
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxVal:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 97
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    const v0, 0x7f080084

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    sget-object p1, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minValSettleHandler:Landroid/os/Handler;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    sget-object p1, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxValSettleHandler:Landroid/os/Handler;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public beginJSCal(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 75
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minVal:[I

    new-array v1, v0, [I

    .line 76
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxVal:[I

    new-array v1, v0, [I

    .line 77
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minValSettle:[I

    new-array v1, v0, [I

    .line 78
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxValSettle:[I

    new-array v0, v0, [I

    .line 79
    iput-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    .line 80
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->context:Landroid/app/Activity;

    .line 81
    iput-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->view:Landroid/widget/ImageView;

    .line 82
    iput-object p3, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->cal_state:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 83
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->setState(I)V

    return-void
.end method

.method public getSettingsExist()Z
    .locals 3

    const/4 v0, 0x0

    .line 219
    :try_start_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v1

    .line 220
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 226
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public saveSettings()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 237
    :cond_0
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const/4 v2, 0x1

    .line 238
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Additional"

    const-string v4, "ThrottleMode"

    invoke-virtual {v0, v3, v4, v2}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Axis"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "Calibration"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minVal:[I

    aget v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "AxisMin"

    invoke-virtual {v0, v4, v8, v7}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxVal:[I

    aget v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "AxisMax"

    invoke-virtual {v0, v4, v8, v7}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "AxisTrim"

    invoke-virtual {v0, v4, v6, v5}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method

.method public updateCal(FFFFF)V
    .locals 8

    .line 168
    iget v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->currState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    const/4 v1, 0x0

    float-to-double v2, p4

    const-wide v4, 0x40dfffc000000000L    # 32767.0

    mul-double/2addr v2, v4

    double-to-int p4, v2

    const/16 v2, 0x7fff

    invoke-static {v2, p4}, Ljava/lang/Integer;->min(II)I

    move-result p4

    const/16 v3, -0x8000

    invoke-static {v3, p4}, Ljava/lang/Integer;->max(II)I

    move-result p4

    aput p4, v0, v1

    .line 172
    iget-object p4, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    float-to-double v0, p3

    mul-double/2addr v0, v4

    double-to-int p3, v0

    invoke-static {v2, p3}, Ljava/lang/Integer;->min(II)I

    move-result p3

    invoke-static {v3, p3}, Ljava/lang/Integer;->max(II)I

    move-result p3

    const/4 v0, 0x1

    aput p3, p4, v0

    .line 173
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    float-to-double v6, p2

    mul-double/2addr v6, v4

    double-to-int p2, v6

    invoke-static {v2, p2}, Ljava/lang/Integer;->min(II)I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Integer;->max(II)I

    move-result p2

    const/4 p4, 0x2

    aput p2, p3, p4

    .line 174
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    const/4 p3, 0x3

    float-to-double v6, p1

    mul-double/2addr v6, v4

    double-to-int p1, v6

    invoke-static {v2, p1}, Ljava/lang/Integer;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Integer;->max(II)I

    move-result p1

    aput p1, p2, p3

    .line 175
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    const/4 p2, 0x4

    float-to-double v6, p5

    mul-double/2addr v6, v4

    double-to-int p3, v6

    invoke-static {v2, p3}, Ljava/lang/Integer;->min(II)I

    move-result p3

    invoke-static {v3, p3}, Ljava/lang/Integer;->max(II)I

    move-result p3

    aput p3, p1, p2

    .line 177
    iget p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->currState:I

    div-int/2addr p1, p4

    .line 178
    iget-boolean p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minDone:Z

    const/16 p3, 0x258

    const-wide/16 p4, 0x1f4

    if-nez p2, :cond_4

    .line 179
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    aget v1, p2, p1

    const/16 v2, -0x4000

    if-le v1, v2, :cond_1

    .line 181
    sget-object p2, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minValSettleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minValSettle:[I

    aget v1, v1, p1

    aget p2, p2, p1

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p2, p3, :cond_2

    .line 184
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minValSettle:[I

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    aget v1, v1, p1

    aput v1, p2, p1

    .line 185
    sget-object p2, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minValSettleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minSettlePosted:Z

    .line 187
    sget-object p2, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minValSettleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p2, v1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 188
    :cond_2
    iget-boolean p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minSettlePosted:Z

    if-nez p2, :cond_3

    .line 190
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minSettlePosted:Z

    .line 191
    sget-object p2, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minValSettleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p2, v1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    :cond_3
    :goto_0
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->minVal:[I

    aget v1, p2, p1

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    aget v2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/Integer;->min(II)I

    move-result v1

    aput v1, p2, p1

    .line 197
    :cond_4
    iget-boolean p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxDone:Z

    if-nez p2, :cond_8

    .line 198
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    aget v1, p2, p1

    const/16 v2, 0x4000

    if-ge v1, v2, :cond_5

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reset maxCallback "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "JoystickCalibration"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object p2, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxValSettleHandler:Landroid/os/Handler;

    iget-object p3, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 201
    :cond_5
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxValSettle:[I

    aget v1, v1, p1

    aget p2, p2, p1

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p2, p3, :cond_6

    .line 203
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxValSettle:[I

    iget-object p3, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    aget p3, p3, p1

    aput p3, p2, p1

    .line 204
    sget-object p2, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxValSettleHandler:Landroid/os/Handler;

    iget-object p3, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxSettlePosted:Z

    .line 206
    sget-object p2, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxValSettleHandler:Landroid/os/Handler;

    iget-object p3, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 207
    :cond_6
    iget-boolean p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxSettlePosted:Z

    if-nez p2, :cond_7

    .line 209
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxSettlePosted:Z

    .line 210
    sget-object p2, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxValSettleHandler:Landroid/os/Handler;

    iget-object p3, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxStateUpdate:Ljava/lang/Runnable;

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    :cond_7
    :goto_1
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->maxVal:[I

    aget p3, p2, p1

    iget-object p4, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->val:[I

    aget p4, p4, p1

    invoke-static {p3, p4}, Ljava/lang/Integer;->max(II)I

    move-result p3

    aput p3, p2, p1

    :cond_8
    return-void
.end method
