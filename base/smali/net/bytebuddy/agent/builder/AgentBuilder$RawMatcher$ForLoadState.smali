.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLoadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

.field public static final enum LOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

.field public static final enum UNLOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;


# instance fields
.field private final unloaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 899
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    const/4 v1, 0x0

    const-string v2, "LOADED"

    invoke-direct {v0, v2, v1, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->LOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    .line 904
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    const/4 v2, 0x1

    const-string v3, "UNLOADED"

    invoke-direct {v0, v3, v2, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->UNLOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    .line 894
    sget-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->LOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->UNLOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 916
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 917
    iput-boolean p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->unloaded:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;
    .locals 1

    .line 894
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;
    .locals 1

    .line 894
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    return-object v0
.end method


# virtual methods
.method public matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-nez p4, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    .line 926
    :goto_0
    iget-boolean p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->unloaded:Z

    if-ne p3, p4, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    return p1
.end method
