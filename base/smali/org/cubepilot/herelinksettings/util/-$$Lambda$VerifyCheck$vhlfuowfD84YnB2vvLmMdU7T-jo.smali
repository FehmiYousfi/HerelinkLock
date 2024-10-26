.class public final synthetic Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$vhlfuowfD84YnB2vvLmMdU7T-jo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/cubepilot/herelinksettings/util/VerifyCheck;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/cubepilot/herelinksettings/util/VerifyCheck;ZLorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$vhlfuowfD84YnB2vvLmMdU7T-jo;->f$0:Lorg/cubepilot/herelinksettings/util/VerifyCheck;

    iput-boolean p2, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$vhlfuowfD84YnB2vvLmMdU7T-jo;->f$1:Z

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$vhlfuowfD84YnB2vvLmMdU7T-jo;->f$2:Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$vhlfuowfD84YnB2vvLmMdU7T-jo;->f$0:Lorg/cubepilot/herelinksettings/util/VerifyCheck;

    iget-boolean v1, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$vhlfuowfD84YnB2vvLmMdU7T-jo;->f$1:Z

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$vhlfuowfD84YnB2vvLmMdU7T-jo;->f$2:Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;

    invoke-virtual {v0, v1, v2}, Lorg/cubepilot/herelinksettings/util/VerifyCheck;->lambda$null$0$VerifyCheck(ZLorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;)V

    return-void
.end method
