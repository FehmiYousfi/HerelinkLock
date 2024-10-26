.class Lorg/cubepilot/herelinksettings/RadioSettings$3;
.super Ljava/lang/Object;
.source "RadioSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/RadioSettings;->initViews()V
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

    .line 156
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$3;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$3;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->requestFreqNegotiation()V

    return-void
.end method
