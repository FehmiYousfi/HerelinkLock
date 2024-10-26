.class public Lorg/cubepilot/herelinksettings/util/VerifyCheck;
.super Ljava/lang/Object;
.source "VerifyCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lorg/cubepilot/herelinksettings/util/VerifyCheck;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cubepilot/herelinksettings/util/VerifyCheck;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/VerifyCheck;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic lambda$null$1(Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-interface {p0, v0}, Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;->onComplete(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$VerifyCheck(ZLorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;)V
    .locals 3

    if-nez p1, :cond_0

    .line 41
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/util/VerifyCheck;->context:Landroid/content/Context;

    const v1, 0x7f1000e3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    :cond_0
    invoke-interface {p2, p1}, Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;->onComplete(Z)V

    return-void
.end method

.method public synthetic lambda$perform$2$VerifyCheck(Landroid/os/Handler;Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;)V
    .locals 3

    .line 34
    :try_start_0
    new-instance v0, Lorg/cubepilot/security/Security;

    invoke-direct {v0}, Lorg/cubepilot/security/Security;-><init>()V

    .line 35
    invoke-virtual {v0}, Lorg/cubepilot/security/Security;->doSecurityCheck()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    new-instance v0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$vhlfuowfD84YnB2vvLmMdU7T-jo;

    invoke-direct {v0, p0, v1, p2}, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$vhlfuowfD84YnB2vvLmMdU7T-jo;-><init>(Lorg/cubepilot/herelinksettings/util/VerifyCheck;ZLorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 47
    sget-object v1, Lorg/cubepilot/herelinksettings/util/VerifyCheck;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    new-instance v0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$3GaCkVDceBKWCNREkpZh7XjgWgg;

    invoke-direct {v0, p2}, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$3GaCkVDceBKWCNREkpZh7XjgWgg;-><init>(Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public perform(Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;Landroid/os/Handler;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$wkE2g1lgSQNmjQUx5w6TD6HnrUM;

    invoke-direct {v1, p0, p2, p1}, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$wkE2g1lgSQNmjQUx5w6TD6HnrUM;-><init>(Lorg/cubepilot/herelinksettings/util/VerifyCheck;Landroid/os/Handler;Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
