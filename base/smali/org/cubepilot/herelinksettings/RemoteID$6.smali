.class Lorg/cubepilot/herelinksettings/RemoteID$6;
.super Ljava/lang/Object;
.source "RemoteID.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/RemoteID;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/RemoteID;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/RemoteID;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$6;->this$0:Lorg/cubepilot/herelinksettings/RemoteID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 419
    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_0

    return-void

    .line 422
    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/dronefleet/mavlink/common/MavOdidDescType;->valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavOdidDescType;

    move-result-object p1

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RemoteID;->access$002(Lio/dronefleet/mavlink/common/MavOdidDescType;)Lio/dronefleet/mavlink/common/MavOdidDescType;

    .line 423
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$6;->this$0:Lorg/cubepilot/herelinksettings/RemoteID;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lorg/cubepilot/herelinksettings/RemoteID;->access$000()Lio/dronefleet/mavlink/common/MavOdidDescType;

    move-result-object p2

    invoke-virtual {p2}, Lio/dronefleet/mavlink/common/MavOdidDescType;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "desc_type"

    invoke-static {p1, p3, p2}, Lorg/cubepilot/herelinksettings/RemoteID;->writeToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
