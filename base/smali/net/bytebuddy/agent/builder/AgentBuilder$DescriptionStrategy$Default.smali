.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

.field public static final enum HYBRID:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

.field public static final enum POOL_FIRST:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

.field public static final enum POOL_ONLY:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;


# instance fields
.field private final loadedFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2918
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "HYBRID"

    invoke-direct {v0, v3, v2, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->HYBRID:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    .line 2945
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$2;

    const-string v3, "POOL_ONLY"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->POOL_ONLY:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    .line 2969
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$3;

    const/4 v3, 0x2

    const-string v4, "POOL_FIRST"

    invoke-direct {v0, v4, v3, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->POOL_FIRST:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    .line 2904
    sget-object v4, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->HYBRID:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    aput-object v4, v0, v2

    sget-object v2, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->POOL_ONLY:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    aput-object v2, v0, v1

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->POOL_FIRST:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    aput-object v1, v0, v3

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 2994
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2995
    iput-boolean p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->loadedFirst:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0

    .line 2904
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;
    .locals 1

    .line 2904
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;
    .locals 1

    .line 2904
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    return-object v0
.end method


# virtual methods
.method public isLoadedFirst()Z
    .locals 1

    .line 3012
    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->loadedFirst:Z

    return v0
.end method

.method public withSuperTypeLoading()Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;
    .locals 1

    .line 3007
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;)V

    return-object v0
.end method

.method public withSuperTypeLoading(Ljava/util/concurrent/ExecutorService;)Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;
    .locals 1

    .line 3026
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method
