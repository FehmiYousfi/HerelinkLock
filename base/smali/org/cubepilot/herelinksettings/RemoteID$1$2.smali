.class Lorg/cubepilot/herelinksettings/RemoteID$1$2;
.super Ljava/lang/Object;
.source "RemoteID.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/RemoteID$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/RemoteID$1;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/RemoteID$1;I)V
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$1$2;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$1;

    iput p2, p0, Lorg/cubepilot/herelinksettings/RemoteID$1$2;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 152
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->overlayPowerBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 153
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->overlayPowerBtn:Landroid/widget/ImageView;

    iget v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$1$2;->val$color:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
