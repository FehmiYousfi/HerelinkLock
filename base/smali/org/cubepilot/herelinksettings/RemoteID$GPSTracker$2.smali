.class Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$2;
.super Ljava/lang/Object;
.source "RemoteID.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->showSettingsAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$2;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 823
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
