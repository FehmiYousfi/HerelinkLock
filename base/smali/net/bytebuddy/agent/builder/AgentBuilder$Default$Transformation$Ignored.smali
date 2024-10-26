.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ignored"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7940
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;

    .line 7935
    sget-object v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7935
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;
    .locals 1

    .line 7935
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;
    .locals 1

    .line 7935
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;

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

    const/4 p1, 0x0

    return p1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/pool/TypePool;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;"
        }
    .end annotation

    .line 7959
    new-instance p4, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;

    invoke-direct {p4, p1, p2, p3, p5}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    return-object p4
.end method
