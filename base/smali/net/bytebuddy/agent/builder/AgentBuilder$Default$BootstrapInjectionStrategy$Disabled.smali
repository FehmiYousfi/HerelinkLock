.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7556
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;

    .line 7551
    sget-object v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7551
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;
    .locals 1

    .line 7551
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;
    .locals 1

    .line 7551
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;

    return-object v0
.end method


# virtual methods
.method public make(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 1

    .line 7560
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Injecting classes into the bootstrap class loader was not enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
