.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;
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
    name = "ForResolvableTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 939
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    .line 934
    sget-object v2, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 934
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;
    .locals 1

    .line 934
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;
    .locals 1

    .line 934
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    return-object v0
.end method


# virtual methods
.method public inverted()Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
    .locals 1

    .line 964
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V

    return-object v0
.end method

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

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 949
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p4, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    return p1

    :catchall_0
    return p3

    :cond_1
    return p1
.end method
