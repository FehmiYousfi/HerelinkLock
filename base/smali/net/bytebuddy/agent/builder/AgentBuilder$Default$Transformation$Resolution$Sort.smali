.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

.field public static final enum DECORATOR:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

.field public static final enum TERMINAL:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

.field public static final enum UNDEFINED:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;


# instance fields
.field private final alive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7810
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "TERMINAL"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->TERMINAL:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    .line 7816
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    const-string v3, "DECORATOR"

    invoke-direct {v0, v3, v2, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->DECORATOR:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    .line 7821
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    const/4 v3, 0x2

    const-string v4, "UNDEFINED"

    invoke-direct {v0, v4, v3, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->UNDEFINED:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    .line 7805
    sget-object v4, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->TERMINAL:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    aput-object v4, v0, v1

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->DECORATOR:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->UNDEFINED:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    aput-object v1, v0, v3

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 7833
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7834
    iput-boolean p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->alive:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;
    .locals 1

    .line 7805
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;
    .locals 1

    .line 7805
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    return-object v0
.end method


# virtual methods
.method protected isAlive()Z
    .locals 1

    .line 7843
    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->alive:Z

    return v0
.end method
