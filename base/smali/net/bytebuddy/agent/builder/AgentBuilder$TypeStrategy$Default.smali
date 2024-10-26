.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

.field public static final enum REBASE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

.field public static final enum REDEFINE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

.field public static final enum REDEFINE_FROZEN:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1616
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$1;

    const/4 v1, 0x0

    const-string v2, "REBASE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->REBASE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    .line 1639
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$2;

    const/4 v2, 0x1

    const-string v3, "REDEFINE"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->REDEFINE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    .line 1663
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$3;

    const/4 v3, 0x2

    const-string v4, "REDEFINE_FROZEN"

    invoke-direct {v0, v4, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->REDEFINE_FROZEN:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    .line 1611
    sget-object v4, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->REBASE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    aput-object v4, v0, v1

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->REDEFINE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->REDEFINE_FROZEN:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    aput-object v1, v0, v3

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1611
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0

    .line 1611
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;
    .locals 1

    .line 1611
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;
    .locals 1

    .line 1611
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    return-object v0
.end method
