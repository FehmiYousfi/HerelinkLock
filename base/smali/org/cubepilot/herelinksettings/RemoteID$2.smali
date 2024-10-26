.class final Lorg/cubepilot/herelinksettings/RemoteID$2;
.super Ljava/lang/Object;
.source "RemoteID.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/RemoteID;->startPowerOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field private latestPressTime:J

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Landroid/view/WindowManager$LayoutParams;Landroid/content/Context;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    .line 243
    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->latestPressTime:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 271
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->initialTouchX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 272
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->initialTouchY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 273
    sget-object p1, Lorg/cubepilot/herelinksettings/RemoteID;->windowManager:Landroid/view/WindowManager;

    sget-object p2, Lorg/cubepilot/herelinksettings/RemoteID;->overlayPowerBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return v1

    .line 250
    :cond_2
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->initialX:I

    .line 251
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->initialY:I

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->initialTouchX:F

    .line 253
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->initialTouchY:F

    .line 255
    iget-wide p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->latestPressTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x1f4

    add-long/2addr p1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_3

    goto :goto_0

    .line 259
    :cond_3
    invoke-static {}, Lorg/cubepilot/herelinksettings/RemoteID;->access$000()Lio/dronefleet/mavlink/common/MavOdidDescType;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/common/MavOdidDescType;->EMERGENCY:Lio/dronefleet/mavlink/common/MavOdidDescType;

    if-ne p1, p2, :cond_4

    .line 260
    sget-object p1, Lio/dronefleet/mavlink/common/MavOdidDescType;->TEXT:Lio/dronefleet/mavlink/common/MavOdidDescType;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RemoteID;->access$002(Lio/dronefleet/mavlink/common/MavOdidDescType;)Lio/dronefleet/mavlink/common/MavOdidDescType;

    .line 261
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->val$context:Landroid/content/Context;

    const-string p2, "Set to Text!!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 263
    :cond_4
    sget-object p1, Lio/dronefleet/mavlink/common/MavOdidDescType;->EMERGENCY:Lio/dronefleet/mavlink/common/MavOdidDescType;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RemoteID;->access$002(Lio/dronefleet/mavlink/common/MavOdidDescType;)Lio/dronefleet/mavlink/common/MavOdidDescType;

    .line 264
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->val$context:Landroid/content/Context;

    const-string p2, "Set to Emergency!!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 256
    :cond_5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$2;->latestPressTime:J

    :goto_1
    return v1
.end method
