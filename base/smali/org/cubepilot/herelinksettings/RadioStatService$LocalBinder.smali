.class public Lorg/cubepilot/herelinksettings/RadioStatService$LocalBinder;
.super Landroid/os/Binder;
.source "RadioStatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/RadioStatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/RadioStatService;


# direct methods
.method public constructor <init>(Lorg/cubepilot/herelinksettings/RadioStatService;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService$LocalBinder;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lorg/cubepilot/herelinksettings/RadioStatService;
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService$LocalBinder;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    return-object v0
.end method
