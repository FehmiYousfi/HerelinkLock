.class public abstract enum Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;
.super Ljava/lang/Enum;
.source "TypeProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;",
        ">;",
        "Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

.field public static final enum DEFAULT_METHOD:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

.field public static final enum SUPER_METHOD:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 325
    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default$1;

    const/4 v1, 0x0

    const-string v2, "SUPER_METHOD"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->SUPER_METHOD:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    .line 337
    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default$2;

    const/4 v2, 0x1

    const-string v3, "DEFAULT_METHOD"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->DEFAULT_METHOD:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    .line 320
    sget-object v3, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->SUPER_METHOD:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->DEFAULT_METHOD:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/auxiliary/TypeProxy$1;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;
    .locals 1

    .line 320
    const-class v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;
    .locals 1

    .line 320
    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    return-object v0
.end method
