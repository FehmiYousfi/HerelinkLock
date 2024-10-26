.class Lorg/cubepilot/herelinksettings/RemoteID$11;
.super Ljava/lang/Object;
.source "RemoteID.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 528
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$11;->this$0:Lorg/cubepilot/herelinksettings/RemoteID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 541
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$11;->this$0:Lorg/cubepilot/herelinksettings/RemoteID;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ceiling"

    invoke-static {v0, v2, v1}, Lorg/cubepilot/herelinksettings/RemoteID;->writeToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RemoteID;->access$802(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
