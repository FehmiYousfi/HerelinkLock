.class public final synthetic Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$wkE2g1lgSQNmjQUx5w6TD6HnrUM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/cubepilot/herelinksettings/util/VerifyCheck;

.field private final synthetic f$1:Landroid/os/Handler;

.field private final synthetic f$2:Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/cubepilot/herelinksettings/util/VerifyCheck;Landroid/os/Handler;Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$wkE2g1lgSQNmjQUx5w6TD6HnrUM;->f$0:Lorg/cubepilot/herelinksettings/util/VerifyCheck;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$wkE2g1lgSQNmjQUx5w6TD6HnrUM;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$wkE2g1lgSQNmjQUx5w6TD6HnrUM;->f$2:Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$wkE2g1lgSQNmjQUx5w6TD6HnrUM;->f$0:Lorg/cubepilot/herelinksettings/util/VerifyCheck;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$wkE2g1lgSQNmjQUx5w6TD6HnrUM;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$VerifyCheck$wkE2g1lgSQNmjQUx5w6TD6HnrUM;->f$2:Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;

    invoke-virtual {v0, v1, v2}, Lorg/cubepilot/herelinksettings/util/VerifyCheck;->lambda$perform$2$VerifyCheck(Landroid/os/Handler;Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;)V

    return-void
.end method
