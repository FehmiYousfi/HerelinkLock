.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

.field public static final enum ESCALATING:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

.field public static final enum SUPPRESSING:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 3330
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default$1;

    const/4 v1, 0x0

    const-string v2, "ESCALATING"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;->ESCALATING:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

    .line 3341
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default$2;

    const/4 v2, 0x1

    const-string v3, "SUPPRESSING"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;->SUPPRESSING:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

    .line 3318
    sget-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;->ESCALATING:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;->SUPPRESSING:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3318
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0

    .line 3318
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;
    .locals 1

    .line 3318
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;
    .locals 1

    .line 3318
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;

    return-object v0
.end method
